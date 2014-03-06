class Team < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :info, presence: true
end
