class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null: false
      t.references :brand, null: false
      t.references :categories, null: false
      t.string :price, null: false

      t.timestamps

    end
  end
end
