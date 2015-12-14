class Band < ActiveRecord::Base
  has_many :concerts
  has_one :user
  validates :name, :location, presence: true
end
