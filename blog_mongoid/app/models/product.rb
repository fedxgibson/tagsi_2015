class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :sales
  belongs_to :category
  field :product_id, type: String
  field :name, type: String
  field :price, type: Float
  field :description, type: String
  validates_presence_of :product_id
  validates_numericality_of :price,
  :message=>"Error Message"
end