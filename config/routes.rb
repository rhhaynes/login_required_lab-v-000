Rails.application.routes.draw do
  root "sessions#index"
  get  "/home"   => "sessions#index"
  get  "/login"  => "sessions#new"
  post "/login"  => "sessions#create"
  get  "/logout" => "sessions#destroy"
  get  "/secret" => "secrets#show"
end
