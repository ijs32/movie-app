class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors
  end
  def show
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end
  def create
    actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
    )
    actor.save 
    render json: actor
  end
  def patch
    id = params[:id]
    actor = Actor.find_by(id: :id)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.save
    render json: actor
  end
  def destroy
    id = params[:id]
    actor = Actor.find_by(id: :id)

    actor.destroy

    render json: {message: "the actor was successfully destroyed"}
  end
end
