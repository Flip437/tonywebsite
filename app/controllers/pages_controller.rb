class PagesController < ApplicationController

    def sitemap
        redirect_to 'https://tonywebsite.s3.eu-west-3.amazonaws.com/sitemaps/sitemap.xml'
      end


end
