class GigController < ApplicationController

  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create
    puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
    puts params[:gig][:date].to_date
    puts params[:gig][:date].to_date.class
    puts params[:gig][:date].to_date.strftime("%d/%m/%Y").to_date.month
    puts params[:gig][:time]
    puts params[:gig][:time].to_time.class
    puts params[:gig][:time].to_time.hour
    puts params[:gig][:time].to_time.min
  

    @gig = Gig.create(
      date: params[:gig][:date].to_date.strftime("%d/%m/%Y").to_date,
      time: params[:gig][:time],
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
