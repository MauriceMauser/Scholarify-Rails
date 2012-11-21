class AddCourseIdToAssignmentTasks < ActiveRecord::Migration
  def change
  	remove_column   :assignment_tasks, :course_id
    add_column 	  	:assignment_tasks, 	:course_id,		:integer

    remove_column   :review_questions, :course_id
    add_column 	  	:review_questions, 	:course_id,		:integer
  end
end
