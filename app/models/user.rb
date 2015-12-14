class User < ActiveRecord::Base
  validates_presence_of :email, :password
  has_secure_password


  def self.authenticate!(email, password)
   user = User.find_by_email(email)
   return false unless user
   user.authenticate(password)
  end

end
