class Api::V1::RoutinesController < ApplicationController
  def index
    routines = Routine.all
    render json: routines, include: :exercises 
  end

  def show
    routine = Routine.find(params[:id])
    render json: routine
  end

  def create
    routine = Routine.create(routines_params)
    render json: routine, include: :exercises
  end

  def update
    routine = Routine.find(params[:id])
    if routine
      routine.update(routines_params)
      render json: routine
    end
  end

  def destroy
    routine = Routine.find(params[:id])
    if routine
      routine.delete
    end
  end

  def routine_exercises
    exercises = Routine.find(params[:id]).exercises
    render json: exercises
  end

  private

  def routines_params
    params.require(:routine).permit(:name)
  end
end
