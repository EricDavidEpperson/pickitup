class NotifyMe < ActionMailer::Base
  default from: "robot@pickitupclothing.com"

  def notification(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message

    mail(to: 'ericdavidepperson@gmail.com', subject: "#{subject}")
  end
end
