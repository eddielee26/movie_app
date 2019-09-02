class Api::ActorsController < ApplicationController
  def actors_action 
    @actor = Actor.find_by(id:1)
    render 'single_actor.json.jb'
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'single_actor.json.jb'
  end

  def wildcard
    id = params[:id]
    @actor = Actor.find_by(id: id)
    render 'single_actor.json.jb'
  end

  def body
    @actor = Actor.find_by(id: params[:id])
    render 'single_actor.json.jb'
  end

end
