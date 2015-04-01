class RemoveAndReplaceVisitorIdByProgramIdToReviews < ActiveRecord::Migration
  def change
  	remove_column :reviews, :visitor_id, :integer
  	add_column :reviews, :program_id, :integer
  end
end
