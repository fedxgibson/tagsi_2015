class Products < ActiveRecord::Migration
  def self.up
     create_table :products do |t|
  t.column :product_id, :integer, :null => false
  t.column :name, :string
  t.column :price, :float
  t.column :category_id, :integer
  t.column :description, :text
  t.column :created_at, :timestamp
     end
  end

  def self.down
    drop_table :products
  end
end