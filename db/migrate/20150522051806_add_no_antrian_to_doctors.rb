class AddNoAntrianToDoctors < ActiveRecord::Migration
  def change
	add_column :doctors, :noAntrian, :int
  end
end
