class Event < ActiveRecord::Base
	extend SimpleCalendar
	has_calendar attribute: :starts_at
	belongs_to :program
end
