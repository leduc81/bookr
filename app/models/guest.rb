class Guest < ActiveRecord::Base
  belongs_to :user
  validates :token, uniqueness: { case_sensitive: false }
  after_create :send_invitation_email

  private

  def send_invitation_email
    if self.email
      raise
      # UserMailer.invite_guest(self, self.user).deliver_now
    end
  end

end
