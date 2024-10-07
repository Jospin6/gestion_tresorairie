json.extract! historique_apport, :id, :montant_recu, :membre_conseil_id, :date_jour, :created_at, :updated_at
json.url historique_apport_url(historique_apport, format: :json)
