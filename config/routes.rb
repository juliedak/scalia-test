Rails.application.routes.draw do
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :products do
      resources :prices
    end
  end
end
