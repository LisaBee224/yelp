class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  has_many :restaurants
  has_many :reviewed_restaurants, through: :reviews, source: :restaurant

  validates :email, presence: true
end
