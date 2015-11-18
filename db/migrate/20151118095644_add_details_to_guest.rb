class AddDetailsToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :description, :string
    add_column :guests, :url, :string
  end
end
