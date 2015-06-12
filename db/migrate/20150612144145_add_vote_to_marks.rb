class AddVoteToMarks < ActiveRecord::Migration
  def change
    add_column :marks, :votes, :integer
  end
end
