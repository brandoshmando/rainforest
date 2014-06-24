class ReviewsController < ApplicationController
  before_action :ensure_logged_in, only: [:edit, :create, :destroy, :update]
  before_action :load_review

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Product.reviews.build(review_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to @product, notice: "Review successfully created!"
    else
      render :product
      flash.now[:alert] = "Review was not created..."
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @product
  end

  private
  def review_params
    params.require(:review).permit(:title, :comment, :product_id)
  end

  def load_review
    @product = Product.find(params[:product_id])
  end
end
