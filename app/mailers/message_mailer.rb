class MessageMailer < ActionMailer::Base
  default from: "ben_feldman@yahoo.com"

  def contact_message(message)
    @message = message

    mail to: "ben_feldman@yahoo.com", subject: "contact from bendeveloping"
  end
end
