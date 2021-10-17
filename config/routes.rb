Rails.application.routes.draw do
  get "/actor" => "actors#show"
  get "/actor/:id" => "actors#show"
  get "/all_movies" => "movies#all_movies"
  get "/movies/:wildcard" => "movies#select_movie"

  post "/actor" => "actors#show"
end
