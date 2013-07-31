IflyBy::Application.routes.draw do
  devise_for :passengers
  root to: "tickets#index"
end
