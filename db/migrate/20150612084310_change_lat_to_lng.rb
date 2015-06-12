class ChangeLatToLng < ActiveRecord::Migration
  def change
    rename_column :marks, :lon, :lng
  end
end
