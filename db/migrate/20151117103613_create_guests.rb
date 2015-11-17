class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.references :user, index: true, foreign_key: true
      t.text :token
      t.text :email
      t.date :start
      t.date :expires
      t.integer :viewed_t
      t.integer :dl_t

      t.timestamps null: false
    end
  end
end
