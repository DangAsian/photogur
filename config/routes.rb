Rails.application.routes.draw do
  root 'pictures#index'
  get 'pictures' => 'pictures#index'
  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'
  get 'pictures/:id' => 'pictures#show'


  get 'pictures/:id/edit' => "pictures#edit"
  patch 'pictures/:id' => "pictures#update"

  delete 'pictures/:id' => 'pictures#destroy'

  resources :users, only: %i(new create)
  resources :sessions, only: %i(new create destroy)
end
