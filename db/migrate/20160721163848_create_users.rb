class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, null: false
      t.string :email
      t.string :address
      t.string :password, limit: 30
      t.string :cc_number
      t.date :date_joined

      t.timestamps
    end
  end
end
