class Sale
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :product
  belongs_to :client
  field :vendor_name, type: String
  field :items_number, type: Integer
end