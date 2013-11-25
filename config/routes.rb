Myapp::Application.routes.draw do
  resources :products


  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                     controllers: {omniauth_callbacks: "omniauth_callbacks", 
                     			   registrations: "registrations"},
                     :sign_out_via => [ :post, :delete ]

  root to: 'accounts#index'

match "invite_user" => "accounts#invite_user", as: 'invite_user'

  resources :accounts do 
    get :settings
  	resources :users

  	resources :products do 
      resources :concepts
    end
  end
end
