class Restaurant < ApplicationRecord
  validates_presence_of :name, :address, :category
  validates_inclusion_of :category, in: ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
end
