class AddCodToLineitems < ActiveRecord::Migration[5.1]
  def change
    add_column :lineitems, :cod, :string
  end
end
