# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.new(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock")
actor.save
actor = Actor.new(first_name: "Tom", last_name: "Hanks", known_for: "Forrest Gump")
actor.save
actor = Actor.new(first_name: "Leonardo", last_name: "DiCaprio", known_for: "Wolf of wallstreet")
actor.save
actor = Actor.new(first_name: "idk", last_name: "anymore-actors", known_for: "forgetable movie")
actor.save

movie = Movie.new(title: "Shutter Island", year: 2004, plot: "crazy ppl on an island going crazy being confused and stuff")
movie.save

movie = Movie.new(title: "Inception", year: 2009, plot: "people goin into other ppls dreams but then dont know if they still in a dream or not or sumthin")