class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, inclusion: { in: CATEGORY }, presence: true
  has_many :reviews
end
