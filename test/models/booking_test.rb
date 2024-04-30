# == Schema Information
#
# Table name: bookings
#
#  id                :bigint           not null, primary key
#  recipient_name    :string
#  recipient_request :string
#  video_type        :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  hologram_id       :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_bookings_on_hologram_id  (hologram_id)
#  index_bookings_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (hologram_id => holograms.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
