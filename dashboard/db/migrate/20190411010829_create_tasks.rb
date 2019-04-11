class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :assigned_to
      t.string :description
      t.string :started_at
      t.string :finish_by
      t.boolean :completed, default: false
      t.belongs_to :column, foreign_key: true

      t.timestamps
    end
  end
end
