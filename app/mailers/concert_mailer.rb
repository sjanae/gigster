class ConcertMailer < ActionMailer::Base
  def send_success(concert_id)
    @concert = Concert.find(concert_id)
    subject = "The Concert You Voted for is happening!"
    mail(to: @user.email, subject: subject, from: "no-reply@gigster-app.com")
  end

  def send_unsuccess(concert_id)
    @concert = Concert.find(concert_id)
    subject = "The Concert You Voted for is happening!"
    mail(to: @user.email, subject: subject, from: "no-reply@gigster-app.com")
  end
end
