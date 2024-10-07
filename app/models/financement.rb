class Financement < ApplicationRecord
  belongs_to :partenaire
  belongs_to :projet
end
