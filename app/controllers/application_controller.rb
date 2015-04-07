class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception
	# helper_method :month_calendar_td_options

	# def month_calendar_td_options
	# 	->(start_date, current_calendar_date) {
	# 	{class: "calendar-date", data: {day: current_calendar_date}}
	# 	}
	# end
end
