class Program < ActiveRecord::Base
	belongs_to :guide
	has_many :reviews
	has_many :events
	accepts_nested_attributes_for :events, reject_if: :all_blank, allow_destroy: true
end
