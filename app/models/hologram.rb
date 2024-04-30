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
class Hologram < ApplicationRecord
  has_one_attached :image

  has_many :bookings
end
