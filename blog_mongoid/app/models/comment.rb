class Comment 
  include Mongoid::Document
  belongs_to :article
  field :commenter, type: String
  field :body, type: String
end
