Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/list_posts' => 'application#list_posts'
  get '/show_post/:id' => 'application#show_post'

end
