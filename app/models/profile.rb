class Profile < ApplicationRecord
  belongs_to :user, optional:true #remove optional
  has_many :skills
  validates :name, presence: true,
    length: { minimum: 5, maximum: 100}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
         uniqueness: { case_sensitive: false },
         format: { with: VALID_EMAIL_REGEX } 
  validates :bio, presence: true,
  length: {minimum: 30, maximum:10000}
  validates :interests, presence: true,
  length: {minimum: 30, maximum:10000}
end
