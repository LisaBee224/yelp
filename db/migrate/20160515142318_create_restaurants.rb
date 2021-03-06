class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :cuisine, null: false
      t.string :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
