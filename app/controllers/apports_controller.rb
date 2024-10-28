class ApportsController < ApplicationController

    def show
        @recu = HistoriqueApport.find(params[:id])

        render pdf: "apport_#{@recu.id}",
            template: "apports/show",
            layout: 'pdf',
            page_size: 'A4'
    end
    

end