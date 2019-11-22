Rails.application.routes.draw do
  root 'home#index'

  resources :aboutus, only: [:index]
  resources :admissions, only: [:index]
  resources :contact, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
