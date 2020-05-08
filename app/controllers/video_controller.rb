class VideoController < ApplicationController
  def create
    @video = Video.new
    @gallery = Gallery.find(params[:gallery])
  end

  def destroy
  end
end
