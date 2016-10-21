require 'movie'
require 'yaml/store'

#create a store that writes objects to a file named test.yml
store = YAML::Store.new('test.yml')

first_movie = Movie.new
first_movie.title = "Awaken"
first_movie.director = "Hayao Miyazaki"
first_movie.year = 2001

second_movie = Movie.new
second_movie.title = "Inception"
second_movie.director = "Christopher Nolan"
second_movie.year = 2010

store.transaction do
  store["Awaken"] = first_movie
  store["Inception"] = second_movie

  p store["Inception"]
end
