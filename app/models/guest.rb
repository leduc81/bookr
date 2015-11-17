class Guest < ActiveRecord::Base
  belongs_to :user
  attr_reader :user_id
end
