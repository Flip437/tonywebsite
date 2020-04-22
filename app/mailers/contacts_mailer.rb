class ContactsMailer < ApplicationMailer
    default from: "philippediollot@gmail.com"
  
    def general_message(contact)
      @contact = contact
      mail( :to => "anthony-rivera@hotmail.fr", :subject => "Vous avez un nouveau message depuis votre site web")
    end
end
