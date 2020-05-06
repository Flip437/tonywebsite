class GalleryController < ApplicationController

  def show
    @gallery = Gallery.first
    @pictures = Gallery.first.pictures.all
  end

  def edit
    @gallery = Gallery.find(params[:id])
    @pictures = @gallery.pictures.all
  end

  def update
    puts "PARAMSSSSSSSSSSSSSSS"
    puts params
    @gallery = Gallery.find(params[:id])
    @gallery.name = params[:gallery][:name]
    @gallery.pictures.attach(params[:gallery][:pictures])

    if @gallery.save
      flash[:success] = "Vous avez bien modifé la gallerie de photos :)"
      redirect_to admin_index_path
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to root_path
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    if @gallery.destroy
      flash[:success] = "Vous avez bien supprimé la gallerie de photos :)"
      redirect_to admin_index_path
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to admin_index_path
    end
  end

end
