class Concert < ActiveRecord::Base
  has_and_belongs_to_many :bands
  has_many :pledges
  acts_as_votable

  validates_uniqueness_of :voter_id
  # validates_presence_of :location
  # validates_presence_of :venue

  def score
    self.votes_for.size
  end

  def success?
    if @concert.votes_for.size < 10
      return false
    else
      return true
    end
  end

end
