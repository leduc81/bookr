class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invite_guest.subject
  #

  def invite_guest(guest, user)
    @guest = guest
    @user = user
    phrase = " pour le bien : #{@guest.description}" if @guest.description
    mail(to: @guest.email, subject: "#{@user.candidates.first.firstname} #{@user.candidates.first.lastname} vous adresse son dossier de location#{phrase}")
  end
end
