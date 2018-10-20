Rails.application.routes.draw do
  resources :incidents
  devise_for :users
  get '/page-2', to: 'page2#index', as: 'page2'
  root 'home#index'
end
