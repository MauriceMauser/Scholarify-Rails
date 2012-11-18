class AddTitleToCourse < ActiveRecord::Migration
  def change
    add_column 		:courses, 	:title, 				:string
    add_column 		:courses, 	:company, 				:string
    add_column 		:courses, 	:intro_video, 			:string
    add_column 		:courses, 	:thumbnail,				:string
    add_column 		:courses, 	:description,			:string
    add_column 		:courses, 	:difficulty,			:string
    add_column 		:courses, 	:requirements,			:string
    add_column 		:courses, 	:start_date, 			:string
    add_column 		:courses, 	:end_date,				:string
    add_column 		:courses, 	:challenge_title,		:string
    add_column 	  	:courses, 	:challenge_description,	:string
    add_column 	  	:courses, 	:challenge_status,		:string

    remove_column 	:courses, 	:new
  end
end
