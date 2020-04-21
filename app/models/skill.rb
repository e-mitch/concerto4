class Skill < ApplicationRecord
  belongs_to :profile, optional:true
  validates :variety, presence: true,
    length: { minimum: 2, maximum: 30}
  validates :genre, presence:true,
    length: {minimum: 2, maximum: 30}
  validates :experience, presence:true,
    numericality: {greater_than_or_equal_to: 0}
  validates :details, presence: true,
    length: {minimum: 15, maximum: 400}
end

