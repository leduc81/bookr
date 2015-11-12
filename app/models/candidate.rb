class Candidate < ActiveRecord::Base
  belongs_to :user
  has_many :proofs
end
