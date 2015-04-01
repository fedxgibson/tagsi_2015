class Client
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :sales
  belongs_to :category
  field :client_id, type: String
  field :identity_doc, type: Integer
  field :first_name, type: String
  field :last_name, type: String
  field :age, type: Integer
  validates_presence_of :identity_doc
  validates_presence_of :client_id
  validates_numericality_of :age,
  :message=>"Error Message"
end