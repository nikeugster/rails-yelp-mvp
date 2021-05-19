class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates_presence_of :name, :address, :category
  validates_inclusion_of :category, in: CATEGORIES
  has_many :reviews, dependent: :destroy
end
