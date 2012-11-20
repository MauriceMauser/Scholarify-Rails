class TopicsController < ApplicationController
	def index
		@topics = Topic.all?
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
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update

	end

	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to topics_url, :notice => "Successfully destroyed topic."
	end
end
