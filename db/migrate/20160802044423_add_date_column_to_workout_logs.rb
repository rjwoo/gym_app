class AddDateColumnToWorkoutLogs < ActiveRecord::Migration
  def change
    add_column :workout_logs, :date, :datetime
  end
end
