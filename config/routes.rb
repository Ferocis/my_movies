Rails.application.routes.draw do

  get 'people/show'

  get 'search/index'

  get 'home/index'

  resources :movies, only: :show
  resources :people, only: :show

  match "search", to: "search#index", via: :get


	match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
	match 'auth/failure', to: redirect('/'), via: [:get, :post]
	match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]



  # You can have the root of your site routed with "root"
  root 'home#index'

end
