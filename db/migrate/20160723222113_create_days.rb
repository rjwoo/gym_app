class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day_number
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
