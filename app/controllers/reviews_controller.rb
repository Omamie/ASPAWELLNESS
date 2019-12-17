class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    @treatment = @booking.treatment
    @center = @treatment.center
    authorize @review
    if @review.save
      redirect_to center_path(@center)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:stars, :description)
  end
end
