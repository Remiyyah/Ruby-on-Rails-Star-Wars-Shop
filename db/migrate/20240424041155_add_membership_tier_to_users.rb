class AddMembershipTierToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :membership_tier, :string
  end
end
