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
            url:      'http://www.anthonyrivera-baryton.fr/staticpage/gallery',
            site_name: 'Anthony Rivera'
          }
    end


    def todo_list_params
        params
          .require(:todo_list)
          .permit(:name, tasks_attributes: Task.attribute_names.map(&:to_sym).push(:_destroy))
      end




end
