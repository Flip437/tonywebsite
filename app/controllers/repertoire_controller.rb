class RepertoireController < ApplicationController

  def index
    @page_title = 'Répertoire - Anthony Rivera'
    @page_description = "Répertoire complet d'Anthony Rivera, chanteur d'opéra"

    set_meta_tags og: {
      title:    @page_title,
      type:     'article',
      url:      'http://www.anthonyrivera-baryton.fr/repertoire',
      site_name: 'Anthony Rivera'
    }

    @categories = Category.all
    @repertoires = Repertoire.all
    @gigs = Gig.all
  end

  def create
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
    @repertoire = Repertoire.find(params[:id])
  end

  def edit
    @repertoire = Repertoire.find(params[:id])
  end

  def update
    @repertoire = Repertoire.find(params[:id])
    if params[:repertoire][:newcategory] == "old_cat_selected" or params[:repertoire][:newcategory] == "new_cat_selected"
      @repertoire.title = params[:repertoire][:title]
      @repertoire.composer = params[:repertoire][:composer]
      @repertoire.role = params[:repertoire][:role]
      @repertoire.category_id = params[:repertoire][:category_id]
      @repertoire.save
    else
      @category = Category.create(name: params[:repertoire][:newcategory])
      @repertoire.title = params[:repertoire][:title]
      @repertoire.composer = params[:repertoire][:composer]
      @repertoire.role = params[:repertoire][:role]
      @repertoire.category_id = @category.id
      @repertoire.newcategory = "new_cat_selected"
      @repertoire.save
    end

    if @repertoire
      flash[:success] = "Vous avez bien modifé l'oeuvre :)"
      redirect_to admin_index_path
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to root_path
    end
  end

  def destroy
    @repertoire = Repertoire.find(params[:id])
    
    if @repertoire.destroy
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
        end
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to admin_index_path
    end
  end

end
