class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.welcome.subject
  #
  def welcome(name, email)
    @name = name
    @email = email

    mail to: email
  end
end
