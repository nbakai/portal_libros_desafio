Rails.application.routes.draw do
  devise_for :users
  get 'orders/index'
  root 'libros#index'
  resources :libros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
