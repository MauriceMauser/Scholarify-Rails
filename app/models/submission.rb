class Submission < ActiveRecord::Base
  attr_accessible :content, :user_id

  belongs_to :submittable, polymorphic: true
  belongs_to :user
end
