class ContactsController < ApplicationController
    puts "IN CONTACT CONTROLERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"

  def create
      @contact = Contact.new(contact_params)
      puts "CONTACTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT"
      puts @contact
      
      if @contact.save
        ContactsMailer.general_message(@contact).deliver
        render :thanks
      else
        render :new
      end
  end
  
  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
