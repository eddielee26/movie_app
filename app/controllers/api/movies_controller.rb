class Api::MoviesController < ApplicationController

  def movies_all
    @movies = Movie.all
    render 'movies_all.json.jb'
  end

  def movies_individual
    @movie = Movie.first
    render 'movies_individual.json.jb'
  end
end

# HTTP Gem located under movie_app/movie_http_gem.rb