Rails.application.routes.draw do
  get 'plants/create'
  resources :gardens, only: [:show] do
    resources :plants, only: [:create]
  end

  resources :plants, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
