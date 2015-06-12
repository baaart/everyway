class ChangeTypeNameToKind < ActiveRecord::Migration
  def change
    rename_column :marks, :type, :kind
  end
end
