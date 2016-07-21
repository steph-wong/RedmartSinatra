class RenameAddressToShippingAdd < ActiveRecord::Migration
  def change
    rename_column :users, :address, :shipping_add

  end
end
