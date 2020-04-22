class HomeController < ApplicationController

    def index
        @contact = Contact.new
        set_meta_tags site: 'Anthony Rivera - Opera singer - Anthony Rivera',
        description: 'Anthony was born and grew up in France. Curious by nature, he did not only study classic music, but also explored jazz, or street theatre.'
    end

end
