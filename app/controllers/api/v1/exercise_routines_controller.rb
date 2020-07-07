class Api::V1::ExerciseRoutinesController < ApplicationController
  def create
    ExerciseRoutine.create(exercise_routine_params)
  end

  def destroy
    routine = ExerciseRoutine.all.select { |er| er[:routine_id] == params[:routine_id] }
    exercise = routine.find { |r| r[:exercise_id] == params[:exercise_id]}
    ExerciseRoutine.delete(exercise)
  end

  private

  def exercise_routine_params
    params.require(:exercise_routine).permit(:excercise_id, :routine_id)
  end
end
