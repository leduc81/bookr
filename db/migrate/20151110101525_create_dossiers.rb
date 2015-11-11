class CreateDossiers < ActiveRecord::Migration
  def change
    create_table :dossiers do |t|
      t.integer :verified_income
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
