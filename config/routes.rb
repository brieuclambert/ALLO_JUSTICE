Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/dashboard' => 'pages#dashboard'
  get '/map' => 'pages#map'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects, only: [:index, :show, :new, :create, :edit, :update] do
    resources :contributions, only: [:new,:create]
    resources :bookings, only: [:new, :create]
  end
  mount Attachinary::Engine => "/attachinary"
end
