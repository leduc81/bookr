class Candidate < ActiveRecord::Base
  belongs_to :user
  has_many :proofs

  def is_populated_step2
    return true if self.firstname && self.lastname && self.birthdate && self.cautioner
    return false
  end

  def is_populated_step3
    return true if self.income && self.status && self.cautioner_relationship
    return false
  end

end
