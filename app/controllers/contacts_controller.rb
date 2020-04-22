class ContactsController < ApplicationController
  include ContactsHelper

  def create
      @contact = Contact.new(contact_params)
      
      if @contact.save
        ContactsMailer.general_message(@contact).deliver
        flash[:success] = "Votre message a bien été envoyé, j'y répondrai dès que possible :)"
        redirect_to root_path
      else
        if @contact.errors.any?
          errors_array = []
          @contact.errors.full_messages.each do |msg|
            errors_array << msg
          end
          flash[:alert] = "Votre message n'a pas été envoyé car : #{errors_array}"
          redirect_to root_path
        end
      end

  end
  
  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
