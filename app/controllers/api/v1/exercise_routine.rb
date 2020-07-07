class Api::V1::ExercisesController < ApplicationController
  def create
    ExerciseRoutine.create(exercise_routine)
  end

  def destroy
    ExerciseRoutine.delete(params[:id])
  end

  private

  def exercise_routine
    params.require(:exercise_routine).permit(:exercise, :routine)
  end
end
