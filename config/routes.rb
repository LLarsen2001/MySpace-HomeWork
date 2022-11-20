Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    delete '/users/:id', to: 'users#destroy'
    put '/users/:id', to: 'users#update'
    get '/users/:user_id/data', to: 'userjobs#boarddata'
    get '/users/:user_id/userjobs/:id', to: 'userjob#show'
    post '/users/:user_id/userjobs', to: 'userjob#create'
    get '/users/:user_id/userjobs', to: 'userjob#index'
    put '/users/:user_id/userjobs/:id', to: 'userjob#update'
    delete '/users/:user_id/userjobs/:id', to: 'userjob#destroy'
    get '/jobs', to: 'jobs#available'
    get '/jobs/all', to: 'jobs#all'
    get '/jobs/:job_id', to: 'jobs#show'
    get '/users/:user_id/postedjobs', to: 'jobs#posted'
    post '/jobs', to: 'jobs#create'
    put '/jobs/:job_id', to: 'jobs#update'
    delete '/jobs/:job_id', to: 'jobs#destroy'
  end
  get '*other', to: 'static#index'
  
end
