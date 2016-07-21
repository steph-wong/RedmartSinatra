class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.references :products, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
