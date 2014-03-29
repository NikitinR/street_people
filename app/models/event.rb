class Event < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :name, presence: true 
	validates :description, presence: true, length: {maximum: 500}
end
