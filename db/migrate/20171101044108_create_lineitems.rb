class CreateLineitems < ActiveRecord::Migration[5.1]
  def change
    create_table :lineitems do |t|
      t.string :service_name
      t.text :description
      t.string :product_price
      t.integer :quantity
      t.string :payment_method
      t.string :delivery_date

      t.timestamps
    end
  end
end
