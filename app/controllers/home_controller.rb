class HomeController < ApplicationController

    def index
        @page_description = "Anthony was born and grew up in France. Curious by nature, he did not only study classic music, but also explored jazz, or street theatre."
        @contact = Contact.new
    end

end
