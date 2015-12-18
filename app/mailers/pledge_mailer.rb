class PledgeMailer < ActionMailer::Base

  def send_success(user)
    @fan = user
    # email = @fan.email
    mail(to: user.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is successful",
        body: "The concert the pledged for is happening!"
    )

  end

  def send_unsuccess(user)
    mail(to: user.email,
        from: "no-reply@gigster-app.com",
        subject: "Concert is unsuccessful",
        body: "The concert the pledged for isn't happening!"
    )

  end
end
