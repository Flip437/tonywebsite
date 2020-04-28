class StaticpageController < ApplicationController

    def gallery
        @page_title = 'Gallerie - Anthony Rivera'
        @page_description = "Gallerie complète d'Anthony Rivera, chanteur d'opéra"

        set_meta_tags og: {
            title:    @page_title,
            type:     'article',
            url:      'http://www.anthonyrivera-baryton.fr/staticpage/gallery',
            site_name: 'Anthony Rivera'
          }
    end

end
