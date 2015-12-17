class Concert < ActiveRecord::Base
  acts_as_votable
  has_and_belongs_to_many :bands
  # validates_uniqueness_of :voter_id

  def pledge
    votes_for.size
  end

  def status
    if votes_for.size < 1
      return "We need more pledges!"
    else
      return "This concert is DEFINITELY a thing!"
    end
  end

end
