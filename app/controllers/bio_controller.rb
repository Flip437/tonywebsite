class BioController < ApplicationController

  def index
    @page_title = 'Biographie - Anthony Rivera'
    @page_description = "Biographie complète d'Anthony Rivera, chanteur d'opéra"
    @bios = Bio.all
    @gigs = Gig.all
  end
    
  def create
      @bio = Bio.create(title: params[:bio][:title], content: params[:bio][:content])
    if @bio
      flash[:success] = "Vous avez bien ajouté une biographie :)"
      redirect_to admin_index_path
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to root_path
    end
  end

  def show
    @bio = Bio.find(params[:id])
  end

  def edit
    @bio = Bio.find(params[:id])
  end

  def update
    @bio = Bio.find(params[:id])
    @bio.content = params[:bio][:content]
    @bio.save
    redirect_to admin_index_path
  end

  def destroy
    @gig = Bio.find(params[:id])
    @gig.destroy
    redirect_to admin_index_path
  end

end
