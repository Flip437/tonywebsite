class AdminController < ApplicationController
    before_action :authenticate_admin!

    def index
        @gig = Gig.new
        @gigs = Gig.all
    end
    
    def new
        @gig = Gig.new
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
