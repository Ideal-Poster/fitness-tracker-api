class CreateExercisesRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises_routines do |t|
      t.references :exercise
      t.references :routine

      t.timestamps
    end
  end
end
