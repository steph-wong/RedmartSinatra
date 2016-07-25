class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null: false
      t.references :brand
      t.references :categories
      t.string :price

      t.timestamps

    end
  end
end
