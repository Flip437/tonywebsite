class CategoryController < ApplicationController

    def index
        @categories = Category.all
        @repertoires = Repertoire.all
    end

    def new
        @gig = Gig.new
        @repertoire = Repertoire.new
        @category = Category.new
    end
    
    def create
        @category = Category.create(name: params[:category][:name])
       if @category
         #flash[:success] = "Vous avez bien ajouté une date à votre agenda :)"
         redirect_to new_category_path
       else
         #flash[:error] = "Une erreur s'est produite :("
         redirect_to root_path
       end
     end

    def show
    end

    def update
    end

    def delete
    end


end
