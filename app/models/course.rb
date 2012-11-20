class Course < ActiveRecord::Base
  attr_accessible :title, :company, :intro_video, :thumbnail, :description, :difficulty, :requirements, 
  :start_date, :end_date, :challenge_title, :challenge_description, :challenge_status, :material, :questions_attributes

  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  
  has_many :assignment_tasks, :dependent => :destroy
  accepts_nested_attributes_for :assignment_tasks, :allow_destroy => true

  has_many :review_questions, :dependent => :destroy
  accepts_nested_attributes_for :review_questions, :allow_destroy => true

  has_many :topics
  accepts_nested_attributes_for :topics
end


