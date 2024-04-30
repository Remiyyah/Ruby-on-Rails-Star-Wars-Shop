class BookingController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @bookings = current_user.bookings
  end
  def new
    @hologram = Hologram.find(params[:hologram_id])
    @booking = Booking.new
  end

  def create
    @hologram = Hologram.find(params[:hologram_id])
    @booking = current_user.bookings.build(booking_params)
    @booking.hologram = @hologram

    if @booking.save
      redirect_to bookings_index_path, notice: 'Hologram booked successfully!'
    else
      render :new
    end
  end

  private

  def booking_params
    params.permit(:recipient_name, :recipient_request, :video_type)
  end
end
