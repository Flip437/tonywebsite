class PicturesController < ApplicationController
    def create
        @gallery = Gallery.find(params[:gallery_id])
        @gallery.pictures.attach(params[:pictures])
        redirect_to(gallery_path(@gallery))
    end
end
