class AddAttachmentPictureToCandidates < ActiveRecord::Migration
  def self.up
    change_table :candidates do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :candidates, :picture
  end
end
