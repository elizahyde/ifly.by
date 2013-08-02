IflyBy::Application.routes.draw do
  get "/admin_home_page" => "admin#home_page"
  get "/flights_filter" => "flights#flights_filter"
  #get '/flight/:id', to: "flights#show", as: 'show_flight_path'
  resources :planes
  resources :flights, :only => [:new, :create, :index, :show]
  devise_for :passengers
  root to: "flights#index"
end
