Rails.application.routes.draw do
  get "/actor2" => "actors#find_actor"
end
