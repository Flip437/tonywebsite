class AdminController < ApplicationController
    before_action :authenticate_admin!

    def index
        @gig = Gig.new
        @gigs = Gig.all
        @repertoires = Repertoire.all
        @repertoire = Repertoire.new
        @category = Category.new
        @categories = Category.all
        @bio = Bio.new
        @bios = Bio.all
        @newgallery = Gallery.new
        @newvideo = Video.new
        @gallery = Gallery.first
        @galleries = Gallery.all
    end
    
    def new
        @gig = Gig.new
        @repertoire = Repertoire.new
        @category = Category.new
        @gallery = Gallery.first
    end
    
    def create
    end
    
    def show
        @gig = Gig.find(params[:id])
    end
    
    def edit
        @gig = Gig.find(params[:id])
    end
    
    def update
    end
    
    def destroy
    end

end
