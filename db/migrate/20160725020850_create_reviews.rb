class CreateReviews < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :content
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      
      t.timestamps
    end
  end
end
