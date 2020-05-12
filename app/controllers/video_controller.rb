class VideoController < ApplicationController
  def create
    @video = Video.new
    @gallery = Gallery.find(params[:gallery])
  end

  def destroy
    puts "IN DESTROUYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
    @gallery = Gallery.find(params[:gallery_id])
    @video =  @gallery.videos.find(params[:id])
    if @video.destroy
        flash[:success] = "Vous avez bien supprimé la Vidéo :)"
        redirect_to edit_gallery_path(params[:gallery_id])
    else
        flash[:error] = "Une erreur s'est produite :("
        redirect_to root_path
    end
  end
end
