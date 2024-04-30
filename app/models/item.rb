# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  category    :string
#  description :string
#  image       :string
#  location    :string
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_items_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Item < ApplicationRecord
  has_one_attached :image
  validates :category_id, presence: true
  belongs_to :category

  has_many :products
  has_many :reviews
  has_many :favorites

end
