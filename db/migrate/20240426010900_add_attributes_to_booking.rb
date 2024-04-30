class AddAttributesToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :recipient_name, :string
    add_column :bookings, :recipient_request, :string
    add_column :bookings, :video_type, :string
  end
end
