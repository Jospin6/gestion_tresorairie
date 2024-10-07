json.extract! activite, :id, :titre, :description, :date_debut, :date_fin, :projet_id, :created_at, :updated_at
json.url activite_url(activite, format: :json)
