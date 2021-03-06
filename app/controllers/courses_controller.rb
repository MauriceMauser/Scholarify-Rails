class CoursesController < ApplicationController
  
  # GET /courses
  # GET /courses.json
  def index
  	@courses = Course.all

  	respond_to do |format|
  		format.html #index.html.erb
  		format.json { render json: @courses }
  	end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
  	@course = Course.new

    3.times do
      question = @course.questions.build
      2.times { question.answers.build }
    end
  	
    respond_to do |format|
  		format.html #new.html.erb
  		format.json { render json: @course }
  	end
  end

  # POST /courses
  # POST /courses.json
  def create
  	@course = Course.new(params[:course])

  	respond_to do |format|
  	  if @course.save
  	  	format.html { render action: "edit", notice: 'Course was successfully created.' }
      	format.json { render json: @course.errors, status: :unprocessable_entity }
  	  else
  	  	format.html { render action: "new" }
      	format.json { render json: @course.errors, status: :unprocessable_entity }
  	  end
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  	@course = Course.find(params[:id])

    @submittable = @course
    #@submissions = @submittable.submissions
    #@submission = Submission.new


      @tasks = @submittable.assignmenttasks
      @submission = @submittable.submissions.new
      @submissionitems = @submission.submissionitems
      @tasks.each do |task|
        submissionitem = @submissionitems.build(:title => task.title, :description => task.content, :assignmenttask_id => task.id)
        @assignmenttask = Assignmenttask.find(submissionitem.assignmenttask_id)
      end


  	respond_to do |format|
  		format.html #show.html.erb
  		format.json { render json: @course }
  	end
  end

  # GET /courses/1/edit
  def edit
  	@course = Course.find(params[:id])
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
  	@course = Course.find(params[:id])

  	respond_to do |format|
  	  if @course.update_attributes(params[:course])
  	  	format.html { render action: "edit", notice: 'Course was successfully updated.' }
      	format.json { head :no_content }
  	  else
  	  	format.html { render action: "edit" }
      	format.json { render json: @course.errors, status: :unprocessable_entity }
  	  end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
  	@course = Course.find(params[:id])
  	@course.destroy

  	respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

end
