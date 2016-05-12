class Artist < ActiveRecord::Base
  has_many :concerts
  mount_uploader :image, ImageUploader
end
