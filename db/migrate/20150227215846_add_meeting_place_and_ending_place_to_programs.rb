class AddMeetingPlaceAndEndingPlaceToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :meeting_place, :text
    add_column :programs, :ending_place, :text
  end
end
