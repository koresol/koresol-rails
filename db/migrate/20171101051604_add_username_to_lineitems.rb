class AddUsernameToLineitems < ActiveRecord::Migration[5.1]
  def change
    add_column :lineitems, :serviceid, :string
  end
end
