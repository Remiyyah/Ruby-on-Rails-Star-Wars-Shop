class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.string :location
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
