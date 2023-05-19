Rails.application.routes.draw do
  
  resources :records
  resources :contracts
  resources :eventos
  resources :comedians
  
  scope module: :api do
    resources :managers
  end
  root "dashboards#index"
end
