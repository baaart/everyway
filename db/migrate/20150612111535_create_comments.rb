class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :mark, index: true, foreign_key: true
      t.string :comment
    end
  end
end
