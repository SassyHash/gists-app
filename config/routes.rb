Gistsapp::Application.routes.draw do

  resources :sessions
  resources :users
  resources :gists do
    resource :favorite, :only => [:create, :destroy]
  end

  resources :favorites, :only => :index

  root to: 'sessions#new'

  match "/" => 'gists#index'
end
