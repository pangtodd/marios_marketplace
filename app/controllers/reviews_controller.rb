class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviewss.new(review_params)
    if @review.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @product =Product.find(params[:product_id])
    @review = Review.find(params[:id])
  render :show
end

private
  def review_params
    params.require(:review).permit(:rating, :author, :content_body)
  end
end