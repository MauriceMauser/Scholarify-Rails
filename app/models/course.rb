class Course < ActiveRecord::Base
  attr_accessible :title, :company, :intro_video, :thumbnail, :description, :difficulty, :requirements, 
  :start_date, :end_date, :challenge_title, :challenge_description, :challenge_status, :material

end
