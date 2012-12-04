class Assignmenttask < ActiveRecord::Base
  attr_accessible :title, :content, :course_id
  belongs_to :course
end
