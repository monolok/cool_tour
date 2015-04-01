class Program < ActiveRecord::Base
	belongs_to :guide
	has_many :reviews
end
