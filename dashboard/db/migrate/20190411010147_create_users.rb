class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :admin, default: false
      t.string :name
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
