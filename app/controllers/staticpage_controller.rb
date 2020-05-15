class StaticpageController < ApplicationController

    def simpleform
        @newgallery = Gallery.new
    end

    def gallery
        @page_title = 'Gallerie - Anthony Rivera'
        @page_description = "Gallerie complète d'Anthony Rivera, chanteur d'opéra"

        set_meta_tags og: {
            title:    @page_title,
            type:     'article',
            image: "http://d1q8yhpgns3eh4.cloudfront.net/assets/core-img/signature_small-034946ef865e1e37df3c663e1fef606b92d929d363f96bee4f814388dc3229c5.png",
            url:      'http://www.anthonyrivera-baryton.fr/staticpage/gallery',
            site_name: 'Anthony Rivera'
          }
    end

end
