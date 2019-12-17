class BookingsController < ApplicationController
  before_action :set_treatment, only: [:new, :create]

  def index
    @bookings = policy_scope(current_user.bookings)

    # Build array of events
    # @events = @bookings.map(&:to_event)
    @events = @bookings.map { |booking| booking.to_event }
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    @booking.treatment = @treatment
    @booking.customer = current_user
    @user = current_user
    if @booking.save
      @user.phone_number = @booking.phone_number
      # Stripe Session
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @booking.treatment.name,
          amount: @booking.treatment.price_cents,
          currency: 'eur',
          quantity: 1
        }],
        success_url: booking_url(@booking),
        cancel_url: new_treatment_booking_url(@treatment)
      )
      @booking.update(checkout_session_id: session.id, status: "pending")
      redirect_to new_booking_payment_path(@booking)
    else

      render :new
    end
  end

  def show
    @booking = current_user.bookings.find(params[:id])
    authorize @booking
  end

  private

  def set_treatment
    @treatment = Treatment.find(params[:treatment_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :phone_number)
  end
end
