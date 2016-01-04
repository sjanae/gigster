class Concert < ActiveRecord::Base
  belongs_to :bands
  has_many :pledges
  # validates_uniqueness_of :voter_id

  # def initialize
  #   @pledges = pledges
  # end

  def successful
    if pledges.size > 1
      return true
    else
      return false
    end
  end


  def total_funds
    pledges.sum("quantity") * price
  end


  def status
    if pledges.size < 1
      return "We need more pledges!"
    else
      return "This concert is DEFINITELY a thing!"
    end
  end


  # def expiration_date
  #   concert.performance_date = 2.months.from_now
  # end


  # def bye_concert
  #   @concert = Concert.find(params[:id])
  #   if expiration_date == Time.now
  #     @concert.destroy
  #   else
  #     return concert
  # end


  # def fail_concert
  #   concert.total_funds.blank? || concert.total_funds < concert.funding_goal
  # end


  


  # def deadline
  #   if performance_date = 2.months.from_now && successful == true
  #     EMAIL SUCCESS
  #   elsif 
        

  # end


  

end



# email band if performance_date has met expiration and success "false"
# email band when funding_goal has been met "true"

# email fan when performance_date is 3 days away from expiration