class AddContentToQuestions < ActiveRecord::Migration
  def change
    add_column 	  	:questions, 	:content,		:text
    add_column 	  	:questions, 	:course_id,		:string
  end
end
