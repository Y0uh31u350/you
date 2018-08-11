require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  mount Sidekiq::Web, at: '/sidekiq'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
