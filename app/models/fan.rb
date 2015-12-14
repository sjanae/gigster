class Fan < ActiveRecord::Base
  has_many :pledges
  has_many :concerts, through: :pledges
  validates :location, presence: true

  end
