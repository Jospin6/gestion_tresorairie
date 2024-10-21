class DocumentsController < ApplicationController

    def rapport_mc

        respond_to do |format|
          format.html # page HTML pour le navigateur
          format.pdf do
            render pdf: "rapport",
                   template: "documents/rapport_mc.html.erb",
                   layout: 'pdf.html',
                   disposition: 'inline'
          end
        end
    end

    def apport

        respond_to do |format|
          format.html # page HTML pour le navigateur
          format.pdf do
            render pdf: "apport",
                   template: "documents/apport.html.erb",
                   layout: 'pdf.html',
                   disposition: 'inline'
          end
        end
    end

    def rapport_prtnr

        respond_to do |format|
          format.html # page HTML pour le navigateur
          format.pdf do
            render pdf: "rapport",
                   template: "documents/rapport_prtnr.html.erb",
                   layout: 'pdf.html',
                   disposition: 'inline'
          end
        end
    end

    def recu_prtnr

        respond_to do |format|
          format.html # page HTML pour le navigateur
          format.pdf do
            render pdf: "recu",
                   template: "documents/recu_prtnr.html.erb",
                   layout: 'pdf.html',
                   disposition: 'inline'
          end
        end
    end

    def projet

        respond_to do |format|
          format.html # page HTML pour le navigateur
          format.pdf do
            render pdf: "projet",
                   template: "documents/projet.html.erb",
                   layout: 'pdf.html',
                   disposition: 'inline'
          end
        end
    end


end