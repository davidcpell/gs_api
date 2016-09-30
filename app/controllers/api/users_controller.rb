class API::UsersController < ApplicationController
  def create
    if user = User.create(user_params)
      render json: user, status: 200
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
