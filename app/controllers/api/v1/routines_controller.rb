class Api::V1::RoutinesController < ApplicationController
  def index
    @routines = Routine.all
    render json: @routines
  end

  def user_routines
    @routines = Routine.all.select { |r| r.user_id  == session[:user_id].to_i }
    render json: @routines
  end

  def show
    @routine = Routine.find(params[:id])
    render json: @routine
  end

  def create
    @routine = Routine.create(user_params)
    render json: @user
  end

  def update
    @routine = Routine.find(params[:id])
    if @routine
      @routine.update(user_params)
      render json: @routine
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
