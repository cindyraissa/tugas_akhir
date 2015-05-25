class RenameTypeToSpesialis < ActiveRecord::Migration
  def change
    rename_column :doctors,:type,:spesialis
  end
end
