class PicturesController < ApplicationController
    
    def create
        if params[:newgallery] == ''
            @gallery = Gallery.find(params[:gallery_id])
            @gallery.pictures.attach(pictures_params[:pictures])
        else
            @gallery = Gallery.create(name: params[:newgallery])
            @gallery.pictures.attach(pictures_params[:pictures])
        end
        
        if @gallery
            flash[:success] = "Vous avez bien ajouté des photos à votre gallerie :)"
            redirect_to admin_index_path
        else
            flash[:error] = "Une erreur s'est produite :("
            redirect_to root_path
        end   
    end

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


    private

    def pictures_params
        params[:gallery].permit(pictures: [])
    end

end
