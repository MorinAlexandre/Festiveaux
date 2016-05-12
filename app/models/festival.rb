class Festival < ActiveRecord::Base
  has_many :concerts
  has_many :comments
  mount_uploader :image, ImageUploader
end
