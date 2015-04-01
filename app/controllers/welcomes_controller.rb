class WelcomesController < ApplicationController
	def index
		@programs = Program.all
		@guides = Guide.all
	end
end
