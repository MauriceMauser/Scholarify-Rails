class SubmissionsController < ApplicationController
	before_filter :load_submittable

	def index
		@submittable = Course.find(params[:course_id])
		@submissions = @submittable.submissions
	end

	def new
		
		@tasks = @submittable.assignmenttasks

		@submission = @submittable.submissions.new
		@submissionitems = @submission.submissionitems

		@tasks.each do |task|
			#submissionitem = @submission.submissionitems.build(:title => task.title, :description => task.content, :assignmenttask_id => task.id)
		
			#@task = Assignmenttask.find(task.id)
			#@task.submissionitem = submissionitem

			submissionitem = @submissionitems.build(:title => task.title, :description => task.content, :assignmenttask_id => task.id)
		
			@assignmenttask = Assignmenttask.find(submissionitem.assignmenttask_id)
		end

		#@submissionitem = Submissionitem.find(params[:id])
		#@assignmenttask = Assignmenttask.find(submissionitem.assignmenttask_id)
		#@assignmenttask = @tasks.submissionitems.

	end

	def create

		@submission = @submittable.submissions.new(params[:submission])


		      @tasks = @submittable.assignmenttasks
		      @submission = @submittable.submissions.new
		      @submissionitems = @submission.submissionitems
		      @tasks.each do |task|
		        submissionitem = @submissionitems.build(:title => task.title, :description => task.content, :assignmenttask_id => task.id)
		        @assignmenttask = Assignmenttask.find(submissionitem.assignmenttask_id)
		      end
		      
		if current_user
			@user = current_user
			user_id = @user.id

			@submission.user_id = user_id

			if @submission.save
				redirect_to [@submittable, :submissions], notice: "Submission created."
			else
				render :new
			end

		else
			render :new, notice: "Please login first."
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