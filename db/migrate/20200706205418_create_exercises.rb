class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :difficulty
      t.text :description

      t.timestamps
    end
  end
end
