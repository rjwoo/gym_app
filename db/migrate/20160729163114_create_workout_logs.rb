class CreateWorkoutLogs < ActiveRecord::Migration
  def change
    create_table :workout_logs do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :reps
      t.float :weight
      t.integer :sets
      t.float :volume

      t.timestamps null: false
    end
  end
end
