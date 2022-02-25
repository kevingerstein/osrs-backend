Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/equipment-sets" => "equipment_sets#index"
  post "/equipment-sets" => "equipment_sets#create"
  get "/equipment-sets/:id" => "equipment_sets#show"
  patch "/equipment-sets/:id" => "equipment_sets#update"
  delete "/equipment-sets/:id" => "equipment_sets#destroy"
end
