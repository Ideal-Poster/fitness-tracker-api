class Api::V1::ExercisesRoutinesController < ApplicationController
  def create
    ExerciseRoutine.create(exercises_routines)
  end

  def destroy
    ExerciseRoutine.delete(params[:id])
  end

  private

  def exercises_routines
    params.require(:exercises_routines).permit(:exercise, :routine)
  end
end
