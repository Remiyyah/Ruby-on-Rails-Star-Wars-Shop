class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :card_number
      t.string :card_name
      t.string :card_expiry
      t.string :card_cvv

      t.timestamps
    end
  end
end
