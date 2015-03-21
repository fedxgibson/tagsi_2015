class Comment < ActiveRecord::Base
  include ActiveMongo::Collection
  belongs_to :article
end
