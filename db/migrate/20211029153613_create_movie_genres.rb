class CreateMovieGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_genres do |t|
      t.integer :movie_id
      t.integer :gnere_id

      t.timestamps
    end
  end
end
