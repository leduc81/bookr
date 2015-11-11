class RemoveTableDossiers < ActiveRecord::Migration
  def change
    drop_table :dossiers
  end
end
