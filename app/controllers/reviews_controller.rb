class ReviewsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @review = Review.new(review_params)
    @review.car_id = @car.id
    @review.save

    redirect_to car_path(@car)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
