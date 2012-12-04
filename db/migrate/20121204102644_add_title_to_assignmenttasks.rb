class AddTitleToAssignmenttasks < ActiveRecord::Migration
  def change
  		add_column 	  	:assignmenttasks, 	:title,		:string
  end
end
