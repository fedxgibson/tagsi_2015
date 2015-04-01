class Product<ActiveRecord::Base
  has_many :sales
  belongs_to :category
  validates_presence_of :product_id
  validates_numericality_of :price,
  :message=>"Error Message"
end