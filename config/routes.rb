Rails.application.routes.draw do
  devise_for :users
  root 'libros#index'
  resources :libros, only: :index do
    resources :orders, only: :create 
  end
  resources :orders, only: :index
  resources :libros
  delete 'order/:id', to: 'orders#destroy', as: 'destroy_order'
  
  resources :billings, only: [] do
    collection do
      get 'pre-pay'
      get 'execute'
    end 
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
