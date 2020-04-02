Rails.application.routes.draw do

  get 'staticpage/gallery'
  get 'staticpage/bio'
  get 'staticpage/repertoire'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  resources :gig, only: [:index, :new, :create, :show]

end
