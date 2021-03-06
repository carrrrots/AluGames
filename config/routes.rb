Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games, shallow: true do
    resources :rents
  end

  get "dashboard", to: "pages#dashboard", as: :dashboard
end
