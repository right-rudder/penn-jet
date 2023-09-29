class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def message_confirmation_email(message)
    @message = message
    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com", "info@pennjet.com"], reply_to: "info@pennjet.com", subject: "✈️ Thank you for contacting Penn Jet LLC")
    else
      # Remove client email when not in production
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com"], reply_to: "info@pennjet.com", subject: "✈️ Thank you for contacting Penn Jet LLC")
    end
  end

end
