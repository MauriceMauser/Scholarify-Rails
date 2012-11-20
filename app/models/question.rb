class Question < ActiveRecord::Base
  attr_accessible :content, :course_id, :answers_attributes
  belongs_to :course

  has_many :answers
  accepts_nested_attributes_for :answers, :allow_destroy => true
end
