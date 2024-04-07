# config/routes.rb

Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :buildings do
    resources :apartments
  end

  # Otras rutas...
end
