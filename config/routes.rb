Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    # get "/actors_single" => "actors#actors_action"

    get "/movies_all" => "movies#movies_all"

    get "movies_individual" => "movies#movies_individual"

    get "/actor" => "actors#show"

    get "/actor/:id" => "actors#wildcard"

    post "/actor" => "actors#body"
  end
end

# HTTP Gem located under movie_app/movie_http_gem.rb
