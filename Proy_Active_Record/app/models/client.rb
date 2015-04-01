class Client<ActiveRecord::Base
  validates_presence_of :identity_doc
  validates_presence_of :client_id
  validates_numericality_of :age,
  :message=>"Error Message"
end