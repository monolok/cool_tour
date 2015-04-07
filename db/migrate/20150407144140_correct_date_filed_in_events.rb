class CorrectDateFiledInEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :starts_at, :date
  	remove_column :events, :ends_at, :date
	add_column :events, :starts_at, :datetime
	add_column :events, :ends_at, :datetime
  end
end
