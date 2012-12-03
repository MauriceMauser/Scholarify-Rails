class EnrollmentsController < ApplicationController

	def create
		if current_user
			@user = current_user
			user_id = @user.id
			course_id = params[:course]
			@course = Course.find(course_id)
			@enrollment = Enrollment.new({ :course_id => course_id, :user_id => user_id })

			redirect_to course_path(params[:course]), notice: "Successfully enrolled in course!"
		else
			redirect_to course_path(params[:course]), notice: "Login first!"
		end
	end

	def destroy
		@enrollment = Enrollment.find(params[:id])
  		@enrollment.destroy
	end

	def index
		@enrollments = Enrollment.all

		respond_to do |format|
  			format.html #index.html.erb
  			format.json { render json: @enrollments }
  		end
	end

end
