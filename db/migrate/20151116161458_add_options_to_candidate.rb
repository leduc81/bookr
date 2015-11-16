class AddOptionsToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :couple, :boolean
    add_column :candidates, :trial_period, :boolean
  end
end
