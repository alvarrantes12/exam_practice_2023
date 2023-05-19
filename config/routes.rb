Rails.application.routes.draw do
  resources :records
  resources :contracts
  resources :events
  resources :comedians

  scope module: :api do
    resources :managers
  end

  root "dashboards#index"
end
