class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :content, :rating
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: (0..5)
end
