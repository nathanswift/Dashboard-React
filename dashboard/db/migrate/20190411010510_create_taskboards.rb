class CreateTaskboards < ActiveRecord::Migration[5.2]
  def change
    create_table :taskboards do |t|
      t.string :name
      t.string :started_at
      t.string :finish_by
      t.belongs_to :companies, foreign_key: true

      t.timestamps
    end
  end
end
