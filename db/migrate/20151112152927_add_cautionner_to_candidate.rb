class AddCautionnerToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :cautioner, :boolean
  end
end
