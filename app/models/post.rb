class Post < ActiveRecord::Base
  has_permalink
  validates_presence_of :title, :body
end
