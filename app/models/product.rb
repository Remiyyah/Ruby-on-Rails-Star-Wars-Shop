# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :bigint           not null
#  item_id    :bigint           not null
#
# Indexes
#
#  index_products_on_cart_id  (cart_id)
#  index_products_on_item_id  (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#  fk_rails_...  (item_id => items.id)
#
class Product < ApplicationRecord
  belongs_to :cart
  belongs_to :item

  def total
    item.price * quantity
  end
  
end
