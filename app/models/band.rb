class Band < ActiveRecord::Base
  has_many :concerts
  validates :name, :location, presence: true
end
