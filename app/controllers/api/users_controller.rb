class API::UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: 200
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
