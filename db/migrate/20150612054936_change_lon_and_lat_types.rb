class ChangeLonAndLatTypes < ActiveRecord::Migration
  def change
    change_column :marks, :lat, :string
    change_column :marks, :lon, :string
  end
end
