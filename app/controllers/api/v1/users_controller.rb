class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user
      user.update(user_params)
      render json: user
    end
  end

  def find_user
    user = User.find_by(username: params[:username] )
    if user
      session[:user_id] = user.id
    end
  end

  def logout
    session.delete :user_id
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
