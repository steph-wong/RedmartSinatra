class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|

      t.references :product, null: false
      t.references :user, null: false
      t.date :purchase_date, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
