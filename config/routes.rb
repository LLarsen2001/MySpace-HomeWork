Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :profiles
    get '/my_profiles', to: 'profiles#my_profiles'
    
    

  end

  # Defines the root path route ("/")
  # root "articles#index"
end
