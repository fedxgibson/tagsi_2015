class Article < ActiveRecord::Base
  include ActiveMongo::Collection
	validates :title, presence: true,
					length: { minimum: 5 }
	has_many :comments
end
