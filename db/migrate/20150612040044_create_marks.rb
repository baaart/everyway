class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.float :lat
      t.float :lon
      t.string :category
      t.string :type
      t.string :state
    end
  end
end
