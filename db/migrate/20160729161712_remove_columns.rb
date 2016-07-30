class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :exercises, :reps
    remove_column :exercises, :weight
    remove_column :exercises, :sets
    remove_column :exercises, :volume
  end
end
