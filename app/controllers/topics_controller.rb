class TopicsController < ApplicationController
	def index
		@topics = Topic.all
	end

	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(params[:topic])
		if @topic.save
			redirect_to @topic, :notice => "Successfully created topic."
		else
			render :action => 'new'
		end
	end

	def show
		@topic = Topic.find(params[:id])
		@commentable = @topic
		@comments = @commentable.comments
		@comment = Comment.new
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		@topic = Topic.find(params[:id])
		if @topic.update_attributes(params[:topic])
			redirect_to @topic, :notice => "Successfully updated topic."
		else
			render :action => 'edit'
		end
	end

	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to topics_url, :notice => "Successfully destroyed topic."
	end
end
