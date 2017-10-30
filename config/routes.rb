Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  resources :attributes
  resources :sub_elements
  resources :elements
  resources :slides
  resources :presentations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
