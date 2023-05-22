Rails.application.routes.draw do
  devise_for :users
  resources :authors
  resources :card_readers
  resources :users
  resources :books
  resources :libraries
  resources :genres
end


