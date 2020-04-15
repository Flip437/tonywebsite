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

        respond_to do |format|
          format.html do 
            flash[:success] = "Vous avez bien ajouté une catégorie :)"
            redirect_to admin_index_path
          end
          format.js { }
        end
      
      else
        flash[:error] = "Une erreur s'est produite"
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
