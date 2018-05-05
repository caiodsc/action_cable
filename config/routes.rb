Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  post '/create-notice', to: 'notices#create'
  get '/notifications', to: 'notices#notifications'
  #get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
