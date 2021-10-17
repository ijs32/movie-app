class ActorsController < ApplicationController
  def show
    id = params["id"].to_i
    actor = Actor.find_by(id: id)
    render json: actor
  end
end
