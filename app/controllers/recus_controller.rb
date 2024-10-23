class RecusController < ApplicationController

    def show
        @recu = AutresDepense.find(params[:id])

        render pdf: "apport_#{@recu.id}",
            template: "recus/show",
            layout: 'pdf',
            page_size: 'A4'
    end
    

end