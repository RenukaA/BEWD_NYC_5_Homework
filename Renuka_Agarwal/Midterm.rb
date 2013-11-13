class Movie
  attr_accessor :title, :info
  def initialize title
    @title = title
  end

  def get_movie_info 
  	JSON.parse(RestClient.get("http://www.omdbapi.com/", {params: {t: @title}}))
  end
end 