class ContactMailer < ActionMailer::Base
  layout 'contact'
  
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.confirmation.subject
  #
  def confirmation(email)
    @greeting = "Hi"

    mail(to: email,
    from: "tobse.herrmann5@ooglemail.com",
    subject: "Ihre Kontaktnachricht erhalten") do |format|
      format.html {render layout: 'contact'}
      format.text
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.inquiry.subject
  #
  def inquiry(contact_message)
    @greeting = "Hi"
    
    @contact_message = contact_message

    mail to: "tobse.herrmann5@ooglemail.com",
    from: contact_message.email,
    subject: "Neue Kontaktanfrage"
  end
end
