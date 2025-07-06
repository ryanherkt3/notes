Rails.application.routes.draw do
  # get "/notes", to: "notes#index"

  # get "/notes/new", to: "notes#new"
  # post "/notes", to: "notes#create"

  # get "/notes/:id", to: "notes#show"

  # get "/notes/:id/edit", to: "notes#edit"
  # patch "/notes/:id", to: "notes#update"
  # put "/notes/:id", to: "notes#update"

  # delete "/notes/:id", to: "notes#destroy"
  
  # Shortcut for defining the CRUD routes above
  resources :notes

  # Set root to the Notes index page
  root "notes#index"
end
