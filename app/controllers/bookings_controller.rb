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
    if @booking.save
      raise
      redirect_to centers_path
    else
      render "new"
    end
  end

  def index
    authorize @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time)
  end
end
