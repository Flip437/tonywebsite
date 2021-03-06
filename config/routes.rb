Rails.application.routes.draw do

  get 'video/create'
  get 'video/destroy'
  get 'gallery/show'
  devise_for :admins
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  #get 'staticpage/simpleform'
  get '/sitemap.xml.gz', to: redirect("https://tonywebsite.s3.eu-west-3.amazonaws.com/sitemap.xml.gz")
  #get '/sitemap.xml.gz', to: redirect("https://s3-eu-west-1.amazonaws.com/XXXXX-YOUR-BUCKET-XXXXX/sitemap.xml.gz")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  resources :gig
  resources :admin
  resources :contacts
  resources :category
  resources :repertoire
  resources :bio
  resources :gallery do
    resources :pictures, only: [:create, :destroy]
    resources :video, only: [:create, :destroy]
  end
  

end
