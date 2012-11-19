class Question < ActiveRecord::Base
  attr_accessible :content, :course_id, 
  belongs_to :course
end
