require 'http'
require 'tty-prompt'
prompt = TTY::Prompt.new

choice = prompt.select("choose an option", ["Select a movie", "see all movies"])
if choice == "Select a movie"
  puts "enter a movie ID"
  number = gets.chomp
  request = HTTP.get("http://localhost:3000/movies/#{number}")
  request = request.parse(:json)
  pp request
elsif choice == "see all movies"
  request = HTTP.get("http://localhost:3000/all_movies")
  request = request.parse(:json)
  pp request
end