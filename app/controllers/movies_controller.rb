class MoviesController < ApplicationController
  def index
    movie = Movie.all
    render json: movie
  end
  def show
    search_id = params[:id].to_i
    movie = Movie.find_by(id: search_id)
    render json: movie
  end
  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"] || true
    )
    if movie.save 
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 406
    end
  end
  def patch
    id = params[:id]
    movie = Movie.find_by(id: :id)
    
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || true
    
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 406
    end
  end
  def destroy
    id = params[:id]
    movie = Movie.find_by(id: :id)

    movie.destroy

    render json: {message: "the movie was successfully destroyed"}
  end
end
