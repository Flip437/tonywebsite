class GigController < ApplicationController

  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.create(
      day: params[:gig][:day].to_i,
      month: params[:gig][:month].to_i,
      year: params[:gig][:year].to_i,
      title: params[:gig][:title],
      description: params[:gig][:description],
      place: params[:gig][:place],
      streetnumb: params[:gig][:streetnumb],
      streettype: params[:gig][:streettype],
      streetname: params[:gig][:streetname]
    )
    if @gig
      #flash[:success] = "Livre ajouté à votre bibliothèque:)"
      redirect_to new_gig_path
    else
      #flash[:error] = "Erreur d'ajout du livre :("
      redirect_to root_path
    end
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def edit
    @gig = Gig.find(params[:id])
  end

end
