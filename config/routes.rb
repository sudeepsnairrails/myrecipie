Rails.application.routes.draw do
  get 'recipies/index'

  get 'recipies/create'

  get 'recipies/new'

  get 'recipies/edit'

  get 'recipies/show'

  get 'recipies/update'

  get 'recipies/destroy'

  root 'pages#home'
  get 'pages/home' => 'pages#home'
  #get '/recipies', to: 'recipies#index'
  #get '/recipies/new', to: 'recipies#new', as: 'new_recipie'
  #post '/recipies', to: 'recipies#create'
  #get '/recipies/:id/edit', to: 'recipies#edit', as: 'edit_recipie'
  #patch '/recipies/:id', to: 'recipies#update'
 # get 'recipies/:id', to: 'recipies#show', as: 'recipie'
  #delete '/recipies/:id', to: 'recipes#destroy'
resources :recipies

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
