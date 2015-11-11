class CreateProofs < ActiveRecord::Migration
  def change
    create_table :proofs do |t|
      t.string :category
      t.integer :amount
      t.boolean :verified
      t.references :candidate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
