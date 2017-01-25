class Post < ActiveRecord::Base
  has_many :comments
  has_many :tags
  belongs_to :author, class_name: 'User'
end
