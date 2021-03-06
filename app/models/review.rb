class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :rating, :content
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
