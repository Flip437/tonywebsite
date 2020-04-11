class ContactsController < ApplicationController
    puts "IN CONTACT CONTROLERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(params[:contact])
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

end
