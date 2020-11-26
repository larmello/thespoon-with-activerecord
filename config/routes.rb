Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD ACTIONS

  # As user: I can see all the restaurans
  get '/restaurants', to: 'restaurants#index'

  # As a user: I can creat a restaurant
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant # criar o formulario
  post '/restaurants', to: 'restaurants#create' # criar o restaurnte

  # As a user: I can edit a restaurant
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # As a user: I can delete a restaurant
  delete '/restaurants/:id', to: 'restaurants#destroy', as: :delete_restaurant

  # As user: I can see specific information about one restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
end

# Rails.application.routes.draw do
#   resources :restaurants
# end
