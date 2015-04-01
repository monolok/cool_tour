class Review < ActiveRecord::Base
	belongs_to :guide
	belongs_to :program
end
