class WelcomesController < ApplicationController
	def index
		@programs = Program.all
	end
end
