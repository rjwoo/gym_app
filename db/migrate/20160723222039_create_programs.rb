class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :program_name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
