class StoreController < ApplicationController

	def index
		@courses = Course.all
	end

end
