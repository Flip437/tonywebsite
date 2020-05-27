class HomeController < ApplicationController

    def index
        @page_description = "Anthony was born and grew up in France. Curious by nature, he did not only study classic music, but also explored jazz, or street theatre."
        
        set_meta_tags og: {
            title:    'Anthony Rivera - Opera singer',
            type:     'website',
            description: @page_description,
            image: "https://static.wixstatic.com/media/24fa41_4783aa08dd5e44c0ad068630155f0f29.jpg/v1/fill/w_516,h_762,al_c,q_85,usm_0.66_1.00_0.01/24fa41_4783aa08dd5e44c0ad068630155f0f29.webp",
            url:      'http://www.anthonyrivera-baryton.fr/',
            site_name: 'Anthony Rivera'
          }
          
        @contact = Contact.new
    end

end
