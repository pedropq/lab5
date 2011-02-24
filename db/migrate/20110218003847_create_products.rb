class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :id
      t.text :description, :null => false
      t.text :image_url, :null => false
      t.float :price, :unique => true, :null => false
      t.integer :projection
      t.integer :amount
      t.timestamps
    end
  end
 
  def self.down
    drop_table :products
  end
end
