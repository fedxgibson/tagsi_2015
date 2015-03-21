class Article
  include MongoMapper::Document

  key :title, String
  key :text, String
  has_many :comments
end
