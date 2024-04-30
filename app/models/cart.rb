# == Schema Information
#
# Table name: carts
#
#  id           :bigint           not null, primary key
#  is_purchased :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_carts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Cart < ApplicationRecord
    has_many :products
    has_many :items, through: :products

    belongs_to :user

    def total_cost
        products.joins(:item).sum('items.price')
    end
end
