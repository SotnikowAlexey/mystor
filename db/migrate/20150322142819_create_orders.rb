class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :adress
      t.text :cart
      t.float :sub      
    end
  end
end
