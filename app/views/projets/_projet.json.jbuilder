json.extract! projet, :id, :titre, :description, :date_debut, :date_fin, :created_at, :updated_at
json.url projet_url(projet, format: :json)
