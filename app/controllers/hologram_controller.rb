class HologramController < ApplicationController
  def index
    @holograms = Hologram.order(:price)
    render :index
  end

  def show
    @hologram = Hologram.find(params[:id])
    render :show
  end
end
