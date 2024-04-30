class AddIsPurchasedToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :is_purchased, :boolean
  end
end
