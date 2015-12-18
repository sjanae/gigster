class PledgeMailer < ActionMailer::Base

  def send_success(pledge)
    # email = @fan.email
    mail(to: pledge.fan.user.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is successful",
        body: "The concert the pledged for is happening!"
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
