class API::PlayedGamesController < ApplicationController
  def create
    pg = user.played_games.new(pg_params)

    if pg.save
      render json: pg, status: :ok
    else
      render json: { errors: pg.errors.full_messages }, status: 422
    end
  end

  def index
    if user
      render json: user.played_games, status: 200
    end
  end

  private 

  def user
    @user ||= User.find(params[:user_id])
  end

  def pg_params
    params.require(:played_game).permit(:score, :win, :level_id, :game_id)
  end
end
