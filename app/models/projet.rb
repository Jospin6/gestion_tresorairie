class Projet < ApplicationRecord
    has_many :activites
    has_many :financements
    has_many :images
end
