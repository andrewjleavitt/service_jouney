Rails.application.routes.draw do
  resources :journals, only: [:index, :new, :create]
end
