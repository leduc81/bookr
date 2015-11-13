class AddCautionerRelationToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :cautioner_relationship, :string
  end
end
