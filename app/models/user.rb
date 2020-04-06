class User < ApplicationRecord
  has_secure_password
  has_one :profiles
  has_many :skills
end
