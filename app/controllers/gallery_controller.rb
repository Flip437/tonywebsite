class GalleryController < ApplicationController

  def index
    @page_title = 'Gallerie - Anthony Rivera'
    @page_description = "Gallerie complète d'Anthony Rivera, chanteur d'opéra"

    set_meta_tags og: {
      title:    @page_title,
      type:     'article',
      image: "http://d1q8yhpgns3eh4.cloudfront.net/assets/core-img/signature_small-034946ef865e1e37df3c663e1fef606b92d929d363f96bee4f814388dc3229c5.png",
      url:      'http://www.anthonyrivera-baryton.fr/gallery',
      site_name: 'Anthony Rivera'
    }

    @galleries = Gallery.all
  end

  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      flash[:success] = "Vous avez bien ajouté des photos à votre gallerie :)"
      redirect_to admin_index_path
    else
      flash[:success] = "Une erreur s'est produite :("
      redirect_to admin_index_path
    end 
  end

  def show
    @gallery = Gallery.first
    @pictures = Gallery.first.pictures.all
  end

  def edit
    @gallery = Gallery.find(params[:id])
    @pictures = @gallery.pictures
    @videos = @gallery.videos
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
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
        end
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to admin_index_path
    end

  end

  private

  def pictures_params
    params[:gallery].permit(pictures: [])
  end

  def gallery_params
    params
      .require(:gallery)
      .permit(:name, pictures: [], videos_attributes: Video.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
