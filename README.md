# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# tonywebsite

template used:
https://colorlib.com/wp/template/onemusic/
https://bootsnipp.com/snippets/aMGnk

video_tag
<div class="col-lg-3 col-md-4 col-xs-6 thumb">
    <%= link_to video_tag('pexel.mp4', class: 'zoom img-fluid'), asset_path("pexel.mp4"), class: 'fancybox', rel: 'ligthbox'%>
</div>


         <%= form_for @repertoire, url: repertoire_index_path, method: "post" do |f| %>


CDN for fancy box
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>


rake assets:clobber
RAILS_ENV=production rake assets:precompile
#config.assets.compile = false



! Warning: Your slug size (310 MB) exceeds our soft limit (300 MB) which may affect boot time.
