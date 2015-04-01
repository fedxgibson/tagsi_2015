class Sales < ActiveRecord::Migration
  def self.up
     create_table :Sales do |t|
  t.column :product_id, :integer, :null => false
  t.column :client_id, :integer, :null => false
  t.column :vendor_name, :string
  t.column :items_number, :integer
  t.column :created_at, :timestamp
     end
  end

  def self.down
    drop_table :Sales
  end
end