IflyBy::Application.routes.draw do
  get "/admin_home_page" => "admin#home_page"
  get "/flights_filter" => "flights#flights_filter"
  resources :planes
  resources :flights, :only => [:new, :create, :index]
  devise_for :passengers
  root to: "flights#index"
end
