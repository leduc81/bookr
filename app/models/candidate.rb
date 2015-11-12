class Candidate < ActiveRecord::Base
  belongs_to :user
  has_many :proofs

  def is_populated_step2
    return true if self.firstname && self.lastname && self.birthdate
    return false
  end

end
