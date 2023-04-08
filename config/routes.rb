Rails.application.routes.draw do
  namespace :api do
    devise_for :users, controllers: {
      sessions: 'api/sessions',
      registrations: 'api/registrations'
    }
    resources :users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
