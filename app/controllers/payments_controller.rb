class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.where(status: 'pending').find(params[:booking_id])
    authorize @booking
  end

  def order_confirm

  end
end
