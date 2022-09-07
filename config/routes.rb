Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post :example, controller: 'kafka', action: :example
  post :another, controller: 'kafka', action: :another
  post :email, controller: 'kafka', action: :email
end
