ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 25,
  domain: 'baci.lindsaar.net',
  user_name: '<username>',
  password: '<password>',
  authentication: :plain,
  enable_starttls_auto: true
}