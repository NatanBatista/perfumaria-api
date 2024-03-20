Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :articles
  get '/articles10', to: 'articles#homeFeed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
