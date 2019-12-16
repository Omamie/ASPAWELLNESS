class ReviewsController < ApplicationController
  def new
    @treatment = Treatment.find(params[:treatment_id])
    @center = Center.find(params[:center_id])
    # @booking = Booking.find()
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  end

  def review_params
    params.require(:review).permit(:stars, :description)
  end
end
