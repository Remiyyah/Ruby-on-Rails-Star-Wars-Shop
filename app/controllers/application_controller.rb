# frozen_string_literal: true

class ApplicationController < ActionController::Base
    before_action :set_current_cart

    private

    def set_current_cart
      @current_cart = current_user.carts if current_user
    end
end
