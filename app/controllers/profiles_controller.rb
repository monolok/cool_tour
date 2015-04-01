class ProfilesController < ApplicationController
	def profile
		@guide = Guide.find(params[:id])
	end
end
