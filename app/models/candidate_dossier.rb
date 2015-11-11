class CandidateDossier < ActiveRecord::Base
  belongs_to :dossier
  belongs_to :candidate
end
