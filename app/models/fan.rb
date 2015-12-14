class Fan < ActiveRecord::Base
  has_many :pledges
  validates :location, presence: true

  end
