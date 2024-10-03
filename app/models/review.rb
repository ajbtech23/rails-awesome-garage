class Review < ApplicationRecord
  belongs_to :car

  validates :comment, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
