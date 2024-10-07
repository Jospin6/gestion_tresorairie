class Salaire < ApplicationRecord
  belongs_to :employe
  belongs_to :apport_local
end
