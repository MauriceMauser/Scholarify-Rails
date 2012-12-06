class Submission < ActiveRecord::Base
  attr_accessible :content, :user_id, :submissionitems_attributes

  belongs_to :submittable, polymorphic: true
  belongs_to :user

  has_many :submissionitems
  accepts_nested_attributes_for :submissionitems

end
