class CartController < ApplicationController
    before_action :authenticate_user!
    before_action :set_current_cart

    def set_current_cart
        @current_cart = current_user.carts.last
        @current_cart ||= current_user.carts.create if current_user
    end

    def index
        @purchased_carts = current_user.carts.where(is_purchased: true)
    end

    def update
        if @cart.update(cart_params)
          redirect_to @cart, notice: "Cart was successfully updated."
        end
    end

    def show
        @cart = @current_cart
        @products = @cart.products.includes(:item)
        @total_cost = @products.sum { |product| product.item.price }
    end

    def cart_params
        params.require(:cart).permit(:is_purchased)
    end

    def remove_item_from_cart
        @product = @current_cart.products.find_by(id: params[:item_id])
        if @product
            @product.destroy
            redirect_to cart_path
        end
    end

end
