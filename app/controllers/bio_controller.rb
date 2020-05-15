class BioController < ApplicationController

  def index
    @page_title = 'Biographie - Anthony Rivera'
    @page_description = "Biographie complète d'Anthony Rivera, chanteur d'opéra"

    set_meta_tags og: {
      title:    @page_title,
      type:     'article',
      image: "http://d1q8yhpgns3eh4.cloudfront.net/assets/core-img/signature_small-034946ef865e1e37df3c663e1fef606b92d929d363f96bee4f814388dc3229c5.png",
      url:      'http://www.anthonyrivera-baryton.fr/bio/',
      site_name: 'Anthony Rivera'
    }

    @bios = Bio.all
    @gigs = []
    Gig.all.each_with_index do |gig, loop|  
        @gigs << gig
        break if loop > 5
    end
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
    @bio = Bio.find(params[:id])
    if @bio.destroy
      respond_to do |format|
        format.js
        format.html { redirect_to admin_index_path }
        end
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to admin_index_path
    end
  end

end
