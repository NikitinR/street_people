class Team < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  validates :name, presence: true
  validates :info, presence: true
end
