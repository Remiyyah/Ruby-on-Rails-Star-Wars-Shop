# == Schema Information
#
# Table name: holograms
#
#  id                 :bigint           not null, primary key
#  actor              :string
#  description        :string
#  price              :integer
#  recipients_name    :string
#  recipients_request :string
#  video_type         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require "test_helper"

class HologramTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
