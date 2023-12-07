Rails.application.routes.draw do
  get 'establishments', to: 'establishments#index'
  get 'users', to: "users#index"
  get 'events', to: "events#index"
  #get 'events/:id'
  root to: "pages#home"

  devise_for :users
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
   get '/users/:id/customer', to: 'pages#customer', as: :customer
   get '/users/:id/comedian', to: 'pages#comedian', as: :comedian
   get '/users/:id/owner', to: 'pages#owner', as: :owner
  end

  get '/users/:id/resetvationsAndEvent', to: "reservations#index", as: :customer_reservation_event
end
