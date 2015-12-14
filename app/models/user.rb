class User < ActiveRecord::Base
  validates_presence_of :email, :password
  attr_accessor :type
  has_secure_password
  belongs_to :fan
  belongs_to :band


  def self.authenticate!(email, password)
   user = User.find_by_email(email)
   return false unless user
   user.authenticate(password)
  end

end
