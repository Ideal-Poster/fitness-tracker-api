class Api::V1::ExerciseRoutinesController < ApplicationController
  def create
    exercise_routine = ExerciseRoutine.create(exercise_routine_params)
    render json: exercise_routine
  end

  def destroy
    ExerciseRoutine.delete(params[:id])
  end

  private

  def exercise_routine_params
    params.require(:exercise_routine).permit(:exercise_id, :routine_id)
  end
end
