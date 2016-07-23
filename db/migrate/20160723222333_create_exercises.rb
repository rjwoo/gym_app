class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :exercise_name
      t.integer :reps
      t.integer :weight
      t.integer :sets
      t.integer :volume
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
