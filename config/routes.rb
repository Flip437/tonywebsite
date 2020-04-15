Rails.application.routes.draw do

  devise_for :admins
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'staticpage/gallery'
  get 'staticpage/bio'
  get 'staticpage/repertoire'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  resources :gig
  resources :admin
  resources :contacts
  resources :category do
    resources :repertoires
  end

end
