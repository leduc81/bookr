class AddFieldsToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :dossier_zip, :string
    add_column :candidates, :dossier_people, :integer
    add_column :candidates, :dossier_max_rent, :integer
    add_column :candidates, :performed_step, :string
  end
end
