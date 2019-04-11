class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :name
      t.belongs_to :taskboard, foreign_key: true

      t.timestamps
    end
  end
end
