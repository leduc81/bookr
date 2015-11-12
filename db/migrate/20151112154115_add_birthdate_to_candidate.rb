class AddBirthdateToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :birthdate, :date
  end
end
