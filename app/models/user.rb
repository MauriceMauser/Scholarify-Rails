class User < ActiveRecord::Base
  attr_accessible :uid, :cv, :education, :email, :experience, :image, :location, :name, :provider, :enrollments_attributes, :submissions_attributes

  has_many :enrollments
  has_many :courses, :through => :enrollments

  has_many :submissions

  def self.from_omniauth(auth)
  	logger.debug "============================================"
    logger.debug auth.to_yaml()
    logger.debug auth["info"]["image"]
  	where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
  	create! do |user|
  		user.provider = auth["provider"]
  		user.uid = auth["uid"]
  		# user.name = auth["info"]["nickname"]
  		user.name = auth["info"]["name"]
  		user.email = auth["info"]["email"]
      	user.image = auth["info"]["profile_image_url"]
  	end
  end
end

# https://dev.twitter.com/docs/platform-objects/users