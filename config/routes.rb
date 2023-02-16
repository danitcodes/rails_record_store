Rails.application.routes.draw do
  # `resources` keyword is Rails convention for adding a group of routes
  resources :albums do
    resources :songs
  end
end
