class Fan < User
  has_many :pledges
  validates :email, :location, :type, presence: true
  
  end
