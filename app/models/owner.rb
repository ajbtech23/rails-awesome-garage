class Owner < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reviews, through: :cars
  has_many :favourites, through: :cars

  validates :nickname, presence: true
  validates :nickname, uniqueness: true
end
