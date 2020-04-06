class Profile < ApplicationRecord
  belongs_to :user, optional:true #remove optional
  has_many :skills
  validates :name, presence: true,
    length: { minimum: 5}
end
