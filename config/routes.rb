Rails.application.routes.draw do
  devise_for :users, skip:%[registrations sessions passwords]
  devise_scope :user do
    post '/signup', to: 'registrations#create'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end

  namespace :api do
    namespace :v1 do
      # Category
      get '/categories', to: 'categories#index'

      # Shop
      get '/shops', to: 'shops#index'
    end
  end
end
