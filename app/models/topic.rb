class Topic < ActiveRecord::Base
  attr_accessible :content, :course_id, :title
  belongs_to :course

  has_many :comments, as: :commentable

end
