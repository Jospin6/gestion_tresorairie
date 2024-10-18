class ImageController < ApplicationController

    def new
        @image = Image.new
    end
    

    def create
        @image = Image.new(image_params)

        respond_to do |format|
        if @image.save
            format.html { redirect_to go_back, notice: "Image was successfully created." }
            format.json { render :show, status: :created, location: @image }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @image.errors, status: :unprocessable_entity }
        end
        end  
    end

    def image_params
        params.require(:image).permit(:projet_id, :image)
    end
    
end