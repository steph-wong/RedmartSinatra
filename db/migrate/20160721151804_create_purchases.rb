class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|

      t.references :product
      t.references :user
      t.date :purchase_date
      t.string :status

      t.timestamps
    end
  end
end
