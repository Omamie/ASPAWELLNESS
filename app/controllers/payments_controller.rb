class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.Pending.find(params[:booking_id])
    authorize @booking
  end

  def order_confirm
  end
end
