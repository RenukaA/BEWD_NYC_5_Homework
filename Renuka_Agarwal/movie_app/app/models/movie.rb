class Movie < ActiveRecord::Base
	validates :title, :description, presence: true 
	validates :description, length: {minimum: 10, message: "Must be greater than 10 characters"}
	validates :year_released, numericality: true 
	validates :year_released, numericality: {greater_than: 0, message: "Must be greater than 0"}
	validates :rating, numericality: true
	validates :rating, inclusion: {in: 1..5, message: "Must be between 1 and 5"}

	def self.search_for(query)
		where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "%#{query}%")
	end 
end


