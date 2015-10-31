Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers, :pokemon
  patch 'capture', to: 'pokemon#capture'
  patch 'damage', to: 'pokemon#damage'
  get 'pokemon/new', to: 'pokemon#new'
  post 'pokemons', to: 'pokemon#save'
end
