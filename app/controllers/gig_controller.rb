class GigController < ApplicationController
  def index
  end

  def show
  end

  def new
    @gig = Gig.new
  end

  def create
    puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
    puts params

    @gig = Gig.create(
      date: params[:date],
      title: params[:title],
      description: params[:description],
      place: params[:place],
      streetnumb: params[:streetnumb],
      streettype: params[:streettype],
      streetname: params[:streetname]
    )

    if @gig
      #flash[:success] = "Livre ajouté à votre bibliothèque:)"
      redirect_to root_path
    else
      #flash[:error] = "Erreur d'ajout du livre :("
      redirect_to root_path
    end

  end

  def edit
  end
end
