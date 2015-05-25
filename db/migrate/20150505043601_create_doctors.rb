class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :type
      t.string :name_doctor
      t.string :day
      t.string :time
      t.string :key

      t.timestamps null: false
    end
  end
end
