class AddServiceIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :service_id, :integer
  end
end
