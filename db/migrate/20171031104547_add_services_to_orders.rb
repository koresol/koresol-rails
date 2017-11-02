class AddServicesToOrders < ActiveRecord::Migration[5.1]
  def change
     add_reference :services, foreign_key: true
  end
end
