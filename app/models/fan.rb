class Fan < ActiveRecord::Base
  has_many :pledges
  has_many :concerts, through: :pledges
  has_one :user
  # validates :location, presence: true

  end
