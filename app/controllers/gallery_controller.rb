class GalleryController < ApplicationController

  def show
    @gallery = Gallery.first
    @pictures = Gallery.first.pictures.all
  end

end
