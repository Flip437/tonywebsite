class GigController < ApplicationController

  def index
    @page_title = 'Agenda - Anthony Rivera'
    @page_description = "Agenda complet d'Anthony Rivera, chanteur d'opéra"

    set_meta_tags og: {
      title:    @page_title,
      type:     'article',
      image: "http://d1q8yhpgns3eh4.cloudfront.net/assets/core-img/signature_small-034946ef865e1e37df3c663e1fef606b92d929d363f96bee4f814388dc3229c5.png",
      url:      'http://www.anthonyrivera-baryton.fr/gig/',
      site_name: 'Anthony Rivera'
    }

    @gigs = []
    Gig.all.each_with_index do |gig, loop|  
        @gigs << gig
        break if loop > 5
    end
  end

  def create
     @gig = Gig.create(
      date: params[:gig][:date].to_date.strftime("%d/%m/%Y").to_date,
      time: params[:gig][:time],
      title: params[:gig][:title],
      description: params[:gig][:description],
      place: params[:gig][:place],
      adress: params[:gig][:adress],
      mapurl: params[:gig][:mapurl].html_safe, #<%=raw @str > // <%== @str > // simple_format(@str)
      ticketurl: params[:gig][:ticketurl].html_safe
    )
    if @gig
      flash[:success] = "Vous avez bien ajouté une date à votre agenda :)"
      redirect_to admin_index_path
    else
      flash[:error] = "Une erreur s'est produite :("
      redirect_to root_path
    end
  end

  def show
    @page_title = Gig.find(params[:id]).title
    @page_description = Gig.find(params[:id]).description
    @gig = Gig.find(params[:id])
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def update
    @gig = Gig.find(params[:id])

    @gig.date = params[:gig][:date].to_date.strftime("%d/%m/%Y").to_date
    @gig.time = params[:gig][:time]
    @gig.title = params[:gig][:title]
    @gig.description = params[:gig][:description]
    @gig.place = params[:gig][:place]
    @gig.adress = params[:gig][:adress]
    @gig.mapurl = params[:gig][:mapurl].html_safe
    @gig.ticketurl = params[:gig][:ticketurl].html_safe 

    @gig.save

    redirect_to gig_path(@gig)
  end

  def destroy
    @gig = Gig.find(params[:id])

    if @gig.destroy
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
