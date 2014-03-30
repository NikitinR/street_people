class Post < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  validates :title, presence: true,
            length: { minimum: 2 }
end
