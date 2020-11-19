Rails.application.routes.draw do
  resources :user_champions
  resources :champions
  resources :dogs
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  post "/championlist", to: 'user_champions#create'
  delete "/delUser", to: "users#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end