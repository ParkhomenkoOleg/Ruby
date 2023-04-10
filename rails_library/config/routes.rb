Rails.application.routes.draw do
  resources :authors
  resources :card_readers
  resources :users
  resources :books
  resources :libraries
  resources :genres
end


