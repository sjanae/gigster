class Fan < ActiveRecord::Base
  acts_as_voter
  has_many :pledges
  has_many :concerts, through: :pledges
  has_one :user
  # validates :location, presence: true

  end
