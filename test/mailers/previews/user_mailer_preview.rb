# test/mailers/previews/user_mailer_preview.rb
class UserMailerPreview < ActionMailer::Preview
  def invite_guest
    UserMailer.invite_guest(Guest.last, User.last)
  end
end
