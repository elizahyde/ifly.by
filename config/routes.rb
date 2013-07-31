IflyBy::Application.routes.draw do
  get 'search' => 'flights#index', :as => "search"
  resources :flights, :only => [:new, :create, :index]
  devise_for :passengers
  root to: "flights#index"
end
