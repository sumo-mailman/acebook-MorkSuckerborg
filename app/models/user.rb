class User < ApplicationRecord
  has_secure_password
  #check password is between 6 and 10 characters when created
  validates :password, length: { minimum: 6, maximum: 10 }, on: :create
  
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, alert: 'Invalid email' }
end
