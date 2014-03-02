class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, presence: true,
            length: { minimum: 2 }
end
