Movie.create!([
  {title: "Shutter Island", year: 2004, plot: "crazy ppl on an island going crazy being confused and stuff", director: nil, english: nil}
])
Actor.create!([
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", age: 32, gender: "male", movie_id: 1},
  {first_name: "Tom", last_name: "Hanks", known_for: "Forrest Gump", age: 63, gender: "male", movie_id: 1},
  {first_name: "Leonardo", last_name: "DiCaprio", known_for: "Wolf of wallstreet", age: 43, gender: "male", movie_id: 1},
  {first_name: "idk", last_name: "anymore-actors", known_for: "forgetable movie", age: "female", gender: 23, movie_id: 1},
  {first_name: "sdfA", last_name: "Bafd", known_for: "sfgsa", age: 15, gender: "male", movie_id: 1}
])
