class AddDetailsToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :biographie, :text
    add_column :candidates, :phone_number, :string
    add_column :candidates, :companie, :string
    add_column :candidates, :position, :string
    add_column :candidates, :position_depuis, :date
  end
end
