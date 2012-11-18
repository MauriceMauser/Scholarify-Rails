class User < ActiveRecord::Base
  attr_accessible :cv, :education, :email, :experience, :image, :location, :name, :provider
end
