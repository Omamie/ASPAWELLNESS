class BookingsController < ApplicationController
  def new
  @treatment = Treatment.find(params[:treatment_id])
  @center = Center.find(@treatment.center_id)
  @booking = Booking.new
  authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @treatment = Treatment.find(params[:treatment_id])
    @center = Center.find(@treatment.center_id)
    @booking.treatment_id = @treatment.id
    @booking.customer_id = current_user.id
    authorize @booking
    @booking.save

    session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: @booking.treatment.name,
      amount: @booking.treatment.price_cents,
      currency: 'eur',
      quantity: 1
    }],
    success_url: center_treatments_url,
    cancel_url: center_treatments_url
  )

  @booking.update(checkout_session_id: session.id)
  redirect_to new_center_treatment_booking_payment_path(@center, @treatment, @booking)
end

def show
  @booking = current_user.bookings.find(params[:id])
end



  def index
    authorize @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time)
  end
end
