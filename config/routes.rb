Rails.application.routes.draw do
  resources :attributes
  resources :sub_elements
  resources :elements
  resources :slides
  resources :presentations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
