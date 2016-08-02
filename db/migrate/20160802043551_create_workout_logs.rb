class CreateWorkoutLogs < ActiveRecord::Migration
  def change
    create_table :workout_logs do |t|

      t.timestamps null: false
    end
  end
end
