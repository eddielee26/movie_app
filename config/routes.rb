Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    # get "/actors_single" => "actors#actors_action"

    get "/movies" => "movies#movie_index"

    get "/movies/:id" => "movies#movie_show"

    post "/movies" => "movies#movie_create"

    patch "/movies/:id" => "movies#movie_update"

    delete "/movies/:id" => "movies#movie_destroy"

    get "/actors" => "actors#actor_index"

    get "/actors/:id" => "actors#actor_show"

    post "/actors" => "actors#actor_create"

    patch "/actors/:id" => "actors#actor_update"

    delete "actors/:id" => "actors#actor_destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"
    
  end
end

# HTTP Gem located under movie_app/movie_http_gem.rb
