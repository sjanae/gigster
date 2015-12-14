class Fan < ActiveRecord::Base
  has_many :pledges
  validates :email, :location, presence: true

  end
