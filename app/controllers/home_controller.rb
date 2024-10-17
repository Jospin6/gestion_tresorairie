class HomeController < ApplicationController
    def index

        @projets_finances = Projet.where(statut: "financé").count
        @projets_non_finances = Projet.where(statut: "non financé").count
        @partenaires = Partenaire.count
        @montant_apport_usd = HistoriqueApport.where(devise: "USD").sum(:montant_recu)
        @montant_apport_fc = HistoriqueApport.where(devise: "FC").sum(:montant_recu)
        @depenses_usd = AutresDepense.where(devise: "USD").sum(:montant)
        @depenses_fc = AutresDepense.where(devise: "FC").sum(:montant)

        @projets = Projet.all
        @depenses = AutresDepense.all
        
    end

end