class AddColumnsToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :reps, :integer
    add_column :exercises, :weight, :float
    add_column :exercises, :sets, :integer
    add_column :exercises, :volume, :float
  end
end
