class Post < ActiveRecord::Base
  has_many :comments
  has_many :tags
  belongs_to :author, class_name: 'User'

  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post

  def is_favorited?(user)
    Favorite.find_by(user_id: user,post_id: id) !=nil
  end
end
