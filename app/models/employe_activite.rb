class EmployeActivite < ApplicationRecord
  belongs_to :employe
  belongs_to :activite
end
