class Concert < ActiveRecord::Base
  has_and_belongs_to_many :bands
  has_many :pledges

  validates_presence_of :location
  validates_presence_of :venue
end
