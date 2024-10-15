class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def message_confirmation_email(message)
    @message = message
    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com", "info@pennjet.net"], reply_to: "info@pennjet.net", subject: "✈️ Thank you for contacting PennJet LLC")
    else
      # Remove client email when not in production
      mail(to: @message.email, bcc: ["no-reply@pitcairnmailer.com"], reply_to: "info@pennjet.net", subject: "✈️ Thank you for contacting PennJet LLC")
    end
  end

end
