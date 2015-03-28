class Article 
  include Mongoid::Document
	validates :title, presence: true,
					length: { minimum: 5 }

  field :title, type: String
  field :text, type: String
	has_many :comments
end
