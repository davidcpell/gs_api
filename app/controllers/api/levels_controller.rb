class API::LevelsController < ApplicationController
  def create
    level = Level.new(level_params)

    if level.save
      render json: level, status: :ok
    else
      render json: { errors: level.errors.full_messages }, status: 422
    end
  end

  private
  
  def level_params
    params.require(:level).permit(:name)
  end
end
