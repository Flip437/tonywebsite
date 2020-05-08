class GalleryController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def create
    @gallery = Gallery.create(name: params[:newgallery])
    if params[:gallery][:pictures] != nil
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

  def show
    @gallery = Gallery.first
    @pictures = Gallery.first.pictures.all
  end

  def edit
    @gallery = Gallery.find(params[:id])
    @pictures = @gallery.pictures.all
  end

  def update
    @gallery = Gallery.find(params[:id])
    @gallery.name = params[:gallery][:name]
    if params[:gallery][:pictures] != nil
      @gallery.pictures.attach(params[:gallery][:pictures])
    end

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

  private

  def pictures_params
    params[:gallery].permit(pictures: [])
  end

end