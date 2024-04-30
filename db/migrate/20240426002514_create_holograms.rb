class CreateHolograms < ActiveRecord::Migration[7.0]
  def change
    create_table :holograms do |t|
      t.string :actor
      t.string :recipients_name
      t.string :recipients_request
      t.integer :price
      t.string :description
      t.string :video_type

      t.timestamps
    end
  end
end
