class RemoveCourseIdFromQuestions < ActiveRecord::Migration
   def change
    remove_column :questions, :course_id
    add_column 	  	:questions, 	:course_id,		:integer
  end
end