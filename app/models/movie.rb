class Movie < ApplicationRecord
  validates :title, :year, presence: true
  validates :plot, length: { maximum: 500, too_long: "500 characters is the maximum allowed"}
end
