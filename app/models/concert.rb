class Concert < ActiveRecord::Base
  has_and_belongs_to_many :bands
  has_many :pledges
  # validates_uniqueness_of :voter_id


  def status
    if pledges.size < 1
      return "We need more pledges!"
      UserMailer.send_unsuccess(@pledges.id).delivernow
    else
      return "This concert is DEFINITELY a thing!"
      UserMailer.send_success(@pledges.id).delivernow
    end
  end

end
