Rails.application.routes.draw do
  devise_for :users
  get '/page-2', to: 'page2#index', as: 'page2'
  root 'home#index'
end
