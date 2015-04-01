class RemoveGuideIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :guide_id, :integer
  end
end
