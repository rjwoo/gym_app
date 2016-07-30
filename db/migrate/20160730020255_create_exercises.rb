class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
