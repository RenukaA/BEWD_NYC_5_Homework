class MovieController < ApplicationController
  
  def index
  end

  def index 
  @movies = Movie.all 
  end

end
