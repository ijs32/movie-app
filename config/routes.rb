Rails.application.routes.draw do
  get "/actor2" => "actors#find_actor"
  get "/all_movies" => "movies#all_movies"
  get "/movies/:wildcard" => "movies#select_movie"
end
