class Concert < ActiveRecord::Base
  has_and_belongs_to_many :users, type: :band
  has_many :pledges
  validates :location, :venue, presence: true
end
