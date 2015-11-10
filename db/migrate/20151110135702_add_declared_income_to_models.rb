class AddDeclaredIncomeToModels < ActiveRecord::Migration
  def change
    add_column :candidates, :declared_income, :integer
    add_column :candidates, :garant_declared_income, :integer
  end
end
