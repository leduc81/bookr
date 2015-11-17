class AddCanceledToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :canceled, :boolean
  end
end
