Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
resource :posts

devise_for :users, controllers: { sessions: 'users/sessions' }


authenticated do
  root :to => 'dashboard#index'
end

# unauthenticated do
#   root :to => 'home#index'
# end



end
