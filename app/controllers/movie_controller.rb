class MovieController < ApplicationController
  def list
    @movies = Movie.all
    render ({:template => "movie/list"})
  end

  def detail
    movie_select = params.fetch("the_id")
    matching_records = Movie.where({ :id => movie_select })
    @the_movie = matching_records.at(0)
    render ({:template => "movie/detail"})
  end
end
