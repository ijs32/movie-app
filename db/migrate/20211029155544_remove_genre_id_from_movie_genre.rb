class RemoveGenreIdFromMovieGenre < ActiveRecord::Migration[6.1]
  def change
    remove_column :movie_genres, :gnere_id, :integer
  end
end
