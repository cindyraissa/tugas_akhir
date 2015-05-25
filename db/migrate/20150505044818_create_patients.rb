class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name_patient
      t.string :address
      t.string :phone
      t.string :email
      t.string :key

      t.timestamps null: false
    end
  end
end
