class Concert < ActiveRecord::Base
  has_and_belongs_to_many :bands
  has_many :pledges
  validates :location, :venue, presence: true
end
