class User < ActiveRecord::Base
  # attr_accessible :username, :email, :password_digest, :location
  validates_presence_of :email, :password
  has_secure_password

  def self.authenticate!(email, password)
   user = User.find_by_email(email)
   return false unless user
   user.authenticate(password)
  end

end
