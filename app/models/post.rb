class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, presence: true,
            length: { minimum: 5 }
end
