Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, :restaurants, :saved_restaurants, :dishes
      post '/fetchrestaurants' , to: 'restaurants#fetchrestaurants'
      post '/users/signup', to: 'users#signup'
      post '/users/login', to: 'users#login'
      post '/saved_restaurants/find', to: 'saved_restaurants#find'
      post '/saved_restaurants/locate', to: 'saved_restaurants#locate'
    end
  end

end
