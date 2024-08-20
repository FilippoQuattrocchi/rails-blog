class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def test_send(email)
    @email = email
    mail(to: @email, subject: 'Test Send')
  end
end
