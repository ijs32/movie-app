require 'http'
require 'tty-prompt'
prompt = TTY::Prompt.new

choice = prompt.select("choose an option", ["Select a movie", "see all movies"])
if choice == "Select a movie"
  choice = prompt.select("choose an option", ["1", "2", "3"])
  request = HTTP.get("http://localhost:3000/movies/#{choice}")
  request = request.parse(:json)
  pp request
elsif choice == "see all movies"
  request = HTTP.get("http://localhost:3000/all_movies")
  request = request.parse(:json)
  pp request
end