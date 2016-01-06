class PledgeMailer < ActionMailer::Base

  def send_success_fan(pledge)
    @user_f = pledge.fan.user
    @concert = pledge.concert
    @band = @concert.band
    @goal = @concert.funding_goal
    @location = @concert.location
    @date = @concert.performance_date

    mail(to: @user_f.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is successful!!"
    )
  end

  def send_success_band(pledge)
    @user_b = pledge.concert.band.user
    @concert = pledge.concert
    @band = @concert.band
    @goal = @concert.funding_goal

    mail(to: @user_b.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is successful!!"
    )

  end

end
