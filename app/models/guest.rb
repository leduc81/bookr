class Guest < ActiveRecord::Base
  belongs_to :user
  validates :token, uniqueness: { case_sensitive: false }
end
