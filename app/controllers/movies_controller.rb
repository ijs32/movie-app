class MoviesController < ApplicationController
  def all_movies
    movie = Movie.all
    render json: movie
  end
  def select_movie
    search_id = params[:wildcard].to_i
    movie = Movie.find_by(id: search_id)
    render json: movie
end
