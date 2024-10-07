json.extract! financement, :id, :partenaire_id, :projet_id, :montant, :num_bordereau, :banque, :created_at, :updated_at
json.url financement_url(financement, format: :json)
