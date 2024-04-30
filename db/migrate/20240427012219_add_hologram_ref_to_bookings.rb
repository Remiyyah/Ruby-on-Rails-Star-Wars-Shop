class AddHologramRefToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :hologram, null: false, foreign_key: true
  end
end
