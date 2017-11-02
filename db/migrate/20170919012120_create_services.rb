class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :features
      t.integer :price
      t.string :seller
      t.string :seller_website
      t.text :description

      t.timestamps
    end
  end
end
