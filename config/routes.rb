Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'items#index'

  # Example of regular route:
  get '/news' => 'items#index'
  get '/newcomment' => 'items#comment'
  get '/about' => 'items#about'
  
  #get '/v0/item' => 'api/v0/item#index'
  #get '/v0/item/' => 'api/v0/item#show'
  post '/v0/item/create' => 'api/v0/item#create'
  
  get '/item' => 'items#show'
  
  get '/submit' => 'items#new'
  post '/submit' => 'items#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  namespace :api, :path => "" do 
    namespace :v0 do
      resources :item
    end
  end
  
  #resources :items, defaults: {format: :json}
  
  resources :users do
    resources :news, controller: :items#, type: 'News'
    resources :comments, controller: :items#, type: 'Comment'
  end

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
