class Review < ApplicationRecord
  RATINGVALUES = (0..5)
  belongs_to :restaurant
  validates_presence_of :content, :rating
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: RATINGVALUES
end
