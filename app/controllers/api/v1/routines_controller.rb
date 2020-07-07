class Api::V1::RoutinesController < ApplicationController
  def index
    byebug
    routines = Routine.all
    render json: routines
  end

  def user_routines
    routines = Routine.all.select { |r| r.user_id  == session[:user_id].to_i }
    render json: routines
  end

  def show
    routine = Routine.find(params[:id])
    render json: routine
  end

  def create
    routine = Routine.create(routines_params)
    render json: routine
  end

  def update
    routine = Routine.find(params[:id])
    if routine
      routine.update(routines_params)
      render json: routine
    end
  end

  private

  def routines_params
    params.require(:routine).permit(:name, :email)
  end
end
