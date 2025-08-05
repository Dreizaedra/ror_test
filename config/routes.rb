Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/products", to: "products#index", as: "products"
  post "/products", to: "products#create", as: "create_product"
  get "/products/new", to: "products#new", as: "new_product"
  get "/products/:id/edit", to: "products#edit", as: "edit_product"
  patch "/products/:id", to: "products#update", as: "update_product"
  get "/products/:id", to: "products#show", as: "product"
end
