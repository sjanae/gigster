class Band < ActiveRecord::Base
  has_many :concerts
  has_one :user
  validates :name, :location, :video_url, :audio_url, presence: true
end
