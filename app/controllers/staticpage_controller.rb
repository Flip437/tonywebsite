class StaticpageController < ApplicationController

    def gallery
        set_meta_tags title: 'Gallerie - Anthony Rivera',
            description: "Gallerie complète d'Anthony Rivera, chanteur d'opéra"
    end

end
