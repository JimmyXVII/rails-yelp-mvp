class Review < ApplicationRecord
  belongs_to :restaurant
  NUMBER = (0..5).to_a
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: NUMBER }
  validates :content, presence: true
end
