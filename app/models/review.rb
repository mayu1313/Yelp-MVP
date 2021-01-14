class Review < ApplicationRecord
  validates :contents
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  belongs_to :restaurant
end
