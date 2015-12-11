class Concert < ActiveRecord::Base
	has_and_belongs_to_many :user, type: :band
  has_many :pledge

  validates :location, :venue, :success, presence: true
end

