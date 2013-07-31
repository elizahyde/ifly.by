IflyBy::Application.routes.draw do
  resources :flights, :only => [:new, :create, :index]
  devise_for :passengers
  root to: "flights#index"
end
