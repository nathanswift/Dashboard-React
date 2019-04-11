class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.belongs_to :admin, foreign_key: true

      t.timestamps
    end
  end
end
