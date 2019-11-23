Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'

  resources :aboutus, only: [:index]
  resources :admissions, only: [:index]
  resources :contact, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
