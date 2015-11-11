class RemoveTableCandidateDossiers < ActiveRecord::Migration
  def change
    drop_table :candidate_dossiers
  end
end
