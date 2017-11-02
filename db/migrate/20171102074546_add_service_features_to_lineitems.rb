class AddServiceFeaturesToLineitems < ActiveRecord::Migration[5.1]
  def change
    add_column :lineitems, :service_features, :string
  end
end
