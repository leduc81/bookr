class Candidate < ActiveRecord::Base
  belongs_to :user
  has_many :proofs
  has_many :candidate_dossiers
  has_many :dossiers, through: :candidate_dossiers
end
