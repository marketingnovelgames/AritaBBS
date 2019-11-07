Rails.application.routes.draw do
  get '/search', to: 'search#search'
  resources :topics, only: [:index, :show, :new, :create] do
    resources :comments, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
