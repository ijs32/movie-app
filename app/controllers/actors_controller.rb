class ActorsController < ApplicationController
  def find_actor
    actor = Actor.find_by(id: 2)
    render json: actor
  end
end
