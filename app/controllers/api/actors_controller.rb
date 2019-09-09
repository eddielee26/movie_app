class Api::ActorsController < ApplicationController
  
  def actor_index
    @actors = Actor.all.order(age: :desc)
    render 'actor_index.json.jb'
  end

  def actor_show
    @actor = Actor.find_by(id: params[:id])
    render 'actor_show.json.jb'
  end

  def actor_create
    @actor = Actor.create(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    )
    if @actor.save
      render 'actor_show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: 422
    end
  end

  def actor_update
    @actor = Actor.find_by(id: params[:id])
    @actor.id = params[:id] || @actor.id
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    if @actor.save
      render 'actor_show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: 422
    end
  end

  def actor_destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "Actor Destroyed"}
  end
end
