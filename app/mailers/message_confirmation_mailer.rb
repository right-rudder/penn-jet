class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def message_confirmation_email(message)
    @message = message

    mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com", "info@pennairrepair.com"], reply_to: "info@pennairrepair.com", subject: "✈️ Thank you for contacting Penn Air Repair LLC")
  end

end
