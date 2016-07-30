class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day_name
      t.references :exercise, index: true, foreign_key: true
      t.references :workout_log, index: true, foreign_key: true
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
