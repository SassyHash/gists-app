Gistsapp::Application.routes.draw do

  resources :sessions
  resources :users
  resources :gists do
    resource :favorite, :only => [:create, :destroy]
  end
  resources :tags, :only => :index
  resources :favorites, :only => :index
  resources :votes, :only => [:create, :index]

  root to: 'sessions#new'

  match "/" => 'gists#index'
end
