class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.date :date
      t.string :name
      t.text :adress
      t.text :cart
      t.float :sub      
    end
  end
end
