class Clients < ActiveRecord::Migration
  def self.up
     create_table :clients do |t|
  t.column :client_id, :integer, :null => false
  t.column :identity_doc, :integer, :null => false
  t.column :first_name, :string
  t.column :last_name, :string
  t.column :age, :integer
  t.column :created_at, :timestamp
     end
  end

  def self.down
    drop_table :clients
  end
end