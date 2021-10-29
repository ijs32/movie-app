class Movie < ApplicationRecord
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  has_many :actors
  validates :title, :year, presence: true
  validates :plot, length: { maximum: 500, too_long: "500 characters is the maximum allowed"}

  def genre_names
    movie.genres
  end
end
