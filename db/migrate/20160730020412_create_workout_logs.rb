class CreateWorkoutLogs < ActiveRecord::Migration
  def change
    create_table :workout_logs do |t|
      t.integer :reps
      t.float :weight
      t.integer :sets
      t.float :volume
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
