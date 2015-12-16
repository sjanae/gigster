class Fan < ActiveRecord::Base
  has_many :pledges
  has_many :concerts, through: :pledges
  has_one :user
  acts_as_voter
  # validates :location, presence: true

  end
