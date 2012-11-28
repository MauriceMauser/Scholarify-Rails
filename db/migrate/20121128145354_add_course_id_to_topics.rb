class AddCourseIdToTopics < ActiveRecord::Migration
  def change
  	remove_column :topics, :course_id
    add_column 	  	:topics, 	:course_id,		:integer
  end
end
