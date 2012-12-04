class Submission < ActiveRecord::Base
  attr_accessible :content

  belongs_to :submittable, polymorphic: true
end
