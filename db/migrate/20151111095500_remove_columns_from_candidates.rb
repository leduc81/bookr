class RemoveColumnsFromCandidates < ActiveRecord::Migration
  def change
    remove_column :candidates, :active
    remove_column :candidates, :gender
    remove_column :candidates, :email
    remove_column :candidates, :sms
    remove_column :candidates, :address
    remove_column :candidates, :zipcode
    remove_column :candidates, :city
    remove_column :candidates, :country
    remove_column :candidates, :verified_garant_income
    remove_column :candidates, :garant_position
    remove_column :candidates, :garant_position_from_date
    remove_column :candidates, :declared_income
    remove_column :candidates, :garant_declared_income
    rename_column :candidates, :verified_income, :income
    rename_column :candidates, :position, :status
    rename_column :candidates, :position_from_date, :status_from_date

  end
end
