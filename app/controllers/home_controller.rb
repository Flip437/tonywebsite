class HomeController < ApplicationController

    def index
        @page_description = "Anthony was born and grew up in France. Curious by nature, he did not only study classic music, but also explored jazz, or street theatre."
        
        set_meta_tags og: {
            title:    'Anthony Rivera - Opera singer',
            type:     'website',
            description: @page_description,
            image: "http://d1q8yhpgns3eh4.cloudfront.net/assets/core-img/signature_small-034946ef865e1e37df3c663e1fef606b92d929d363f96bee4f814388dc3229c5.png",
            url:      'http://www.anthonyrivera-baryton.fr/',
            site_name: 'Anthony Rivera'
          }
          
        @contact = Contact.new
    end

end
