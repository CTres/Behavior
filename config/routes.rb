Myapp::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                     controllers: {omniauth_callbacks: "omniauth_callbacks", 
                     			   registrations: "registrations"},
                     :sign_out_via => [ :post, :delete ]

  root to: 'accounts#users'

match "invite_user" => "accounts#invite_user", as: 'invite_user'

  resources :accounts do 
  	resources :users
  end
end
