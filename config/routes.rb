Rails.application.routes.draw do
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :products, only: [ :new, :create, :index, :show] do
      resources :prices
    end
  end
end
