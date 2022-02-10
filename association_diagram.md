# Active Record Assocations Diagram 
# https://guides.rubyonrails.org/association_basics.html#the-has-many-through-association

class User < ApplicationRecord 
  has_many :posts 
  has_many :comments, through: :posts
  has_many :postlikes, through: :posts
end 

class Post < ApplicationRecord 
  belongs_to :user
  has_many :comments
  has_many :postlikes
  has_many :commentlikes, through: :comments 
end 

class PostLike < ApplicationRecord 
  belongs_to :post 
end 

class Comment < ApplicationRecord
  belongs_to :post
  has_many :commentlikes
end 

class CommentLike < ApplicationRecord
  belongs_to :comment
end 