class User < ApplicationRecord
  has_secure_password
  has_many :posts 

  validates :password, length: { minimum: 6, maximum: 10 }, on: :create
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, alert: 'Invalid email' }
end
