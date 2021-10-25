class Movie < ApplicationRecord
  has_many :actors
  validates :title, :year, presence: true
  validates :plot, length: { maximum: 500, too_long: "500 characters is the maximum allowed"}
end
