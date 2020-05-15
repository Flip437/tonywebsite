class HomeController < ApplicationController

    def index
        @page_description = "Anthony was born and grew up in France. Curious by nature, he did not only study classic music, but also explored jazz, or street theatre."
        
        set_meta_tags og: {
            title:    'Anthony Rivera - Opera singer',
            type:     'website',
            description: @page_description,
            image: "",
            url:      'http://www.anthonyrivera-baryton.fr/',
            site_name: 'Anthony Rivera'
          }
          
        @contact = Contact.new
    end

end
