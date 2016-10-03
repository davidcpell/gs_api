class API::GamesController < ApplicationController
  def create
    game = Game.create 
    render json: game, status: 200
  end
end
