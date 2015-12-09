class User < ActiveRecord::Base
  # attr_accessible :username, :email, :password_digest, :location
  validates_presence_of :email, :password_digest

  has_secure_password

end
