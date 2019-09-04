class Api::MoviesController < ApplicationController

  def movie_index
    @movies = Movie.all
    render 'movie_index.json.jb'
  end

  def movie_show
    @movie = Movie.find_by(id: params[:id])
    render 'movie_show.json.jb'
  end

  def movie_create
    @movie = Movie.create(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save
      render 'movie_show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: 422
    end
  end

  def movie_update
    @movie = Movie.find_by(id: params[:id])
    @movie.id = params[:id] || @movie.id
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render 'movie_show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: 422
    end
  end

  def movie_destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie destroyed"}
  end
end
