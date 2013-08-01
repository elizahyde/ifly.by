IflyBy::Application.routes.draw do

  resources :planes
  resources :flights, :only => [:new, :create, :index]
  devise_for :passengers
  root to: "flights#index"
end
