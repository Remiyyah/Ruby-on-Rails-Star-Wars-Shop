class FavoriteController < ApplicationController
    before_action :authenticate_user!

    def show
        @favorites = @current_user.favorites.includes(:item)
        render :show
    end
end
