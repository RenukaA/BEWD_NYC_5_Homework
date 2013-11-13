require 'rest-client'
require 'json'
require_relative 'movie'

puts "Please give me a movie title"
input = gets.chomp

new_movie = Movie.new input
result = new_movie.get_movie_info

while result == {"Response" => "False","Error" => "Movie not found!"}
	puts "Invalid entry. Please enter movie title."
	input = gets.chomp
	new_movie.title = input
	result = new_movie.get_movie_info 
end

puts "This movie was made in #{result["Year"]}"
puts "Plot Synopsis: #{result["Plot"]}"
puts "Stars: #{result["Actors"]}"
