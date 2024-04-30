class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
    @cart = Cart.find(params[:cart_id])
    @total_cost = @cart.total_cost
  end

  def process_payment
    card_params = params.require(:payment).permit(:card_number, :card_name, :card_expiry, :card_cvv)

    @cart = Cart.find_by(id: params[:cart_id])

    if validate_card_info(card_params)
      @cart.update(is_purchased: true)
      @current_user.carts.create

      redirect_to purchases_path, notice: "Payment successful. Thank you!"
    else
      flash[:error] = "Invalid card information. Please check the format."
      render :new
    end
  end

  def set_cart_and_total_cost
    @cart = current_user.current_cart
    redirect_to root_path, alert: "Your cart is empty." unless @cart.present?
    @total_cost = @cart.total_cost
  end

  def validate_card_info(card_params)
    card_number_valid = card_params[:card_number].match?(/^\d{16}$/)
    card_expiry_valid = card_params[:card_expiry].match?(/^\d{2}\/\d{2}$/)
    card_cvv_valid = card_params[:card_cvv].match?(/^\d{3}$/)


    card_number_valid && card_expiry_valid && card_cvv_valid
  end
end
