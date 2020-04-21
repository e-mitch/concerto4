class User < ApplicationRecord
  has_secure_password
  has_one :profiles
  has_many :skills
  validates :username, presence: true, length: {minimum: 5, maximum: 25}
  validates :password, presence: true, length: {minimum: 7}
end
