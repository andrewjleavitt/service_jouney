Rails.application.routes.draw do
  resources :journals, only: [:index]
end
