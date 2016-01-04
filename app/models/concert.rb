class Concert < ActiveRecord::Base
  belongs_to :bands
  has_many :pledges
  # validates_uniqueness_of :voter_id


  def status
    if pledges.size < 1
      return "We need more pledges!"
    else
      return "This concert is DEFINITELY a thing!"
    end
  end

end
