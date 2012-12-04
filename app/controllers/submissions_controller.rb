class SubmissionsController < ApplicationController
	before_filter :load_submittable

	def index
		@submittable = Course.find(params[:course_id])
		@submissions = @submittable.submissions
	end

	def new
		@submission = @submittable.submissions.new
	end

	def create
		@submission = @submittable.submissions.new(params[:submission])
		if @submission.save
			redirect_to [@submittable, :submissions], notice: "Submission created."
		else
			render :new
		end
	end

	def show
		@submission = Submission.find(params[:id])
	end


	private

	def load_submittable
		resource, id = request.path.split('/')[1,2]
		@submittable = resource.singularize.classify.constantize.find(id)
	end

end
