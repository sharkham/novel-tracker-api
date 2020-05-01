class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  # def password_reset
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  default from: "noveltrackerapp@gmail.com"

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password Reset"
  end
end
