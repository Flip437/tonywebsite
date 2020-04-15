class RepertoireController < ApplicationController

    def index
        @categories = Category.all
        @repertoires = Repertoire.all
    end

    def new
    end
    
    def create
    end

    def show
    end

    def update
    end

    def delete
    end


end
