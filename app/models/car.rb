class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites

  validates :brand, :model, :year, :fuel, presence: true
  validates :year, numericality: { only_integer: true }
end
