class HomeController < ApplicationController
    puts "IN HOME CONTROLLERRRRRRRRRRRRRRRRRRRRRRRRRRRR"

    def index
        puts "IN INDEX DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        @contact = Contact.new
    end

end
