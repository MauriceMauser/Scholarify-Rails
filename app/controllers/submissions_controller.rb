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

		if @current_user
			@user = @current_user
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


if current_user
			@user = current_user
			user_id = @user.id
			course_id = params[:course]
			@course = Course.find(course_id)
			@enrollment = Enrollment.new({ :course_id => course_id, :user_id => user_id })

			if @enrollment.save
				redirect_to course_path(params[:course]), notice: "Successfully enrolled in course!"
			else
				redirect_to course_path(params[:course]), notice: "Enrollment failed!"
			end
		else
			redirect_to course_path(params[:course]), notice: "Login first!"
		end