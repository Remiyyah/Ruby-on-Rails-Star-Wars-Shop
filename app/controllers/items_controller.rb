class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_categories
  before_action :set_current_cart, except: [:index, :show]

  def index
    if params[:search]
      @items = Item.where("name ILIKE ?", "%#{params[:search]}%").order(:price).paginate(page: params[:page], per_page: 10)
    else
      @items = Item.order(:price).paginate(page: params[:page], per_page: 8)
    end
    render :index
  end

  def show
    @items = Item.find(params[:id])
    render :show
  end

  def set_categories
    @categories = Category.all.order(:name)
  end

  def set_current_cart
    @current_cart = current_user.carts.last
    @current_cart ||= current_user.carts.create if current_user
  end

  def add_to_cart
    @item = Item.find(params[:id])
    @cart = @current_cart
    @products = @cart.products
    @current_cart.products.create(item: @item)

    flash['success'] = "Item added to cart!"
    redirect_to item_path
  end

  def remove_item_from_cart
    @item_id = params[:item_id]
    @item = @current_cart.products.joins(:item).find_by(item_id: @item_id)

    if @item && @item.destroy
      flash['success'] = 'Item successfully removed from cart.'
    else
      flash['error'] = 'Failed to remove item from cart.'
    end

    redirect_to cart_path
  end

  def favoriting_item
    @item = Item.find(params[:id])
    current_user.favorites.create(item: @item)
    flash['success'] = "Favorited item!"
    redirect_to item_path
  end

  def unfavoriting_item
    @item_id = params[:item_id]
    @item = @current_user.favorites.joins(:item).find_by(item_id: @item_id)
    @item.destroy
    if @item && @item.destroy
      flash['success'] = 'Item unfavorited!'
    else
      flash['error'] = 'Failed to remove item from cart.'
    end
    redirect_to favorite_path
  end

end
