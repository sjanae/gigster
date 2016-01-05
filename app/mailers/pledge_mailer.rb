class PledgeMailer < ActionMailer::Base

  def send_success(pledge)
    @user = pledge.fan.user
    @concert = pledge.concert
    @band = @concert.band
    @goal = @concert.funding_goal

    mail(to: @user.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is successful"
    )

  end

  def send_unsuccess(pledge)
    mail(to: pledge.fan.user.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is unsuccessful",
        body: "The concert the pledged for isn't happening!"
    )

  end
end
