class Fan < ActiveRecord::Base
  has_many :pledges
  has_many :concerts => :pledges
  validates :location, presence: true

  end
