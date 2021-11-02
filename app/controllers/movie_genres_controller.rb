class MovieGenresController < ApplicationController
  def create
    movie_genre = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    if movie_genre.save
      render json: genre
    else
      render json: {errors: movie_genre.errors.full_messages}, status: 406
    end
  end
end
