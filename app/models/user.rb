class User < ActiveRecord::Base

  validates_presence_of :email
  has_secure_password
  has_many :concerts
  belongs_to :band
  belongs_to :fan


  def self.authenticate!(email, password)
   user = User.find_by_email(email)
   return false unless user
   user.authenticate(password)
  end

end
