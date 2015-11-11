class Dossier < ActiveRecord::Base
  belongs_to :user
  has_many :candidate_dossiers
  has_many :candidates, through: :candidate_dossiers
end
