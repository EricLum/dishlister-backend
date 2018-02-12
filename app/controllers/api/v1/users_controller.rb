class Api::V1::UsersController < ApplicationController

  def login
    byebug
    @user = User.find_by(username: user_params[:username])
    if @user
      render json: @user
    else
      #do nothing
    end
  end

  def signup
    byebug
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render @user.errors.full_messages
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
