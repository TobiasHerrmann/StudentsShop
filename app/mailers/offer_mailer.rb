class OfferMailer < ActionMailer::Base
  layout 'offer'
  
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.offer_mailer.confirmation.subject
  #
  def confirmation(email)
    @greeting = "Hi"
    
    mail(to: email,
    from: "tobse.herrmann5@googlemail.com",
    subject: "Ihr Angebot erhalten") do |format|
      format.html { render layout: 'offer' }
      format.text
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.offer_mailer.inquiry.subject
  #
  def inquiry(offer_message)
    @greeting = "Hi"
    
    @offer_message = offer_message

    mail to: "tobse.herrmann5@googlemail.com",
    from: offer_message.email,
    subject: "Neue Angebotsanfrage"

  end
end
