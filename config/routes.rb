IflyBy::Application.routes.draw do
  devise_for :passengers
  root to: "passengers#index"
  resources :passengers, only: [:index, :create, :edit] do
  end
end
