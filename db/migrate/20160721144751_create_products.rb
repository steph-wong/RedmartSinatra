class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null: false
      t.references :product, null: false
      t.references :user, null: false
      t.string :status, null: false

      t.timestamps

    end
  end
end
