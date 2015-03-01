class AddGuideIdToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :guide_id, :integer
  end
end
