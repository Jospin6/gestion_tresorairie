class Partenaire < ApplicationRecord
    mount_uploader :photo, ImageUploader 
    has_many :financements
end
