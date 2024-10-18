class Image < ApplicationRecord
  belongs_to :projet
  mount_uploader :image, ImageUploader
end
