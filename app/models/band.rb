class Band < ActiveRecord::Base
  acts_as_votable
  has_many :concerts
  has_one :user
  validates_uniqueness_of :voter_id
  # validates :name, :location, :video_url, :audio_url, presence: true

  def fanship
    get_likes.size
  end

end
