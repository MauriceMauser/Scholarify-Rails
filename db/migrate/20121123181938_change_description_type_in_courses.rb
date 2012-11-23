class ChangeDescriptionTypeInCourses < ActiveRecord::Migration
   def change
  	remove_column   :courses, :description
 	remove_column   :courses, :requirements
 	remove_column   :courses, :challenge_description

    add_column 	  	:courses, :description,	:text
    add_column 	  	:courses, :requirements,	:text
    add_column 	  	:courses, :challenge_description,	:text
  end
end
