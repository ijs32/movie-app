/* global axios */

axios.get("http://localhost:3000/movies").then(function (response) {
  var movies = response.data;
  console.log(movies);
});
