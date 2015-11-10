class CreateCandidateDossiers < ActiveRecord::Migration
  def change
    create_table :candidate_dossiers do |t|
      t.references :dossier, index: true, foreign_key: true
      t.references :candidate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
