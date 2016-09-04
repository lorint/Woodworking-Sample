Rails.application.routes.draw do
  # Put in a custom action to be able to sign in as someone
  get '/users/sign_in/:id' => 'users#sign_in', as: :sign_in
  resources :users, except: [:show]

  # get '/items/new' => 'items#new', as: :item_new

  resources :items, only: [:index, :new, :create]
end
