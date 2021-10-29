class Actor < ApplicationRecord
  belongs_to :movie
  validates :known_for, presence: true
  validates :first_name, :last_name, length: { minimum: 2}
  # validates :age, numericality: true

  def actor_plot
    movie = Movie.find_by(id: movie_id)
    movie.plot
  end
end
