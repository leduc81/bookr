class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.boolean :active
      t.string :nationality
      t.string :gender
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :sms
      t.string :address
      t.integer :zipcode
      t.string :city
      t.string :country
      t.integer :verified_income
      t.string :position
      t.date :position_from_date
      t.integer :verified_garant_income
      t.string :garant_position
      t.date :garant_position_from_date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
