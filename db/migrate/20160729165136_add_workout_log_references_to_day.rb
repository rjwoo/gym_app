class AddWorkoutLogReferencesToDay < ActiveRecord::Migration
  def change
    add_reference :days, :workout_log, index: true, foreign_key: true
  end
end
