class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :service_name
      t.string :product_price
      t.string :seller
      t.string :seller_website
      t.string :address
      t.string :payment_method
      t.text :description

      t.timestamps
    end
  end
end
