class API::GamesController < ApplicationController
  def create
    if game = Game.create 
      render json: game, status: 200
    end
  end
end
