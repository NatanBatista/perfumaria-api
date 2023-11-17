Rails.application.routes.draw do
  resources :articles
  get '/articles3', to: 'articles#homeFeed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
