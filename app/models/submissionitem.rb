class Submissionitem < ActiveRecord::Base
	attr_accessible :title, :description, :input, :submission_id, :assignmenttask_id

	belongs_to :submission

	belongs_to :assignmenttask

end
