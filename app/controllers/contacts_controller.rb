class ContactsController < ApplicationController

  def create
      @contact = Contact.new(contact_params)
      
      if @contact.save
        ContactsMailer.general_message(@contact).deliver
        flash[:success] = "Votre message a bien été envoyé, j'y répondrai dès que possible:)"
        puts "FLASHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
        puts flash
        redirect_to root_path
      else
        flash[:alert] = "Une erreur s'est produite :( "
        puts "FLASHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
        
        redirect_to root_path
      end
  end
  
  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
