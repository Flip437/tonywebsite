class PicturesController < ApplicationController

    def destroy
        @gallery = Gallery.find(params[:gallery_id])
        @picture =  @gallery.pictures.find(params[:id])
        if @picture.destroy
            flash[:success] = "Vous avez bien supprimé la photo :)"
            redirect_to edit_gallery_path(params[:gallery_id])
        else
            flash[:error] = "Une erreur s'est produite :("
            redirect_to root_path
        end
    end

end
