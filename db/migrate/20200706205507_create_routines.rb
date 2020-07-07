class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.references :exercise
      t.integer :reps
      t.integer :sets
      t.references :user

      t.timestamps
    end
  end
end
