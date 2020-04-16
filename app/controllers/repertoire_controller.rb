class RepertoireController < ApplicationController

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
      puts "NEW CATEGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG"
      puts params
      puts params[:repertoire][:newcategory] == ''
      puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
      if params[:repertoire][:newcategory] == ''
        @repertoire = Repertoire.create(
          title: params[:repertoire][:title],
          composer: params[:repertoire][:composer],
          role: params[:repertoire][:role],
          category_id: params[:repertoire][:category_id],
          newcategory: "old_cat_selected")
      else
        @category = Category.create(name: params[:repertoire][:newcategory])
        @repertoire = Repertoire.create(
          title: params[:repertoire][:title],
          composer: params[:repertoire][:composer],
          role: params[:repertoire][:role],
          category_id: @category.id,
          newcategory: "new_cat_selected")
      end

      if @repertoire
        flash[:success] = "Vous avez bien ajouté une oeuvre à votre répertoire :)"
        redirect_to admin_index_path
      else
        flash[:error] = "Une erreur s'est produite :("
        redirect_to root_path
      end
    end

    def show
    end

    def update
    end

    def destroy
      @repertoire = Repertoire.find(params[:id])
      @repertoire.destroy
      redirect_to admin_index_path
    end


end
