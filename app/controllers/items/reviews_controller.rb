# app/controllers/items/reviews_controller.rb
module Items
  class ReviewsController < ApplicationController
    before_action :find_item
    before_action :find_review, only: [:show, :edit, :update, :destroy]


    def index
      @reviews = @item.reviews
    end

    def new
      @review = @item.reviews.new
    end

    def create
      @review = @item.reviews.new(review_params)


  if @review.save
    redirect_to item_reviews_path(@item), notice: "Review was successfully created."
  else
    render :new
  end
    end

    def show
      @item = Item.find(params[:item_id])
      @reviews = @item.reviews
    end

    def destroy
      @review.destroy
      redirect_to item_reviews_path(@item), notice: "Review was successfully deleted."
    end

    private

    def find_item
      @item = Item.find(params[:item_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end
    def find_review
      @review = @item.reviews.find(params[:id])
    end
  end
end
