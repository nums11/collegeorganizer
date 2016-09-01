Rails.application.routes.draw do
  root 'schools#index'
  get '/' => 'schools#index', as: :schools
  post '/' => 'schools#create'

  get '/proximity' => 'schools#proximity_index'
  post '/proximity' => 'schools#create'

  get '/division' => 'schools#division_index'
  post '/division' => 'schools#create'

  get '/population' => 'schools#population_index'
  post '/population' => 'schools#create'

  get '/rank' => 'schools#rank_index'
  post '/rank' => 'schools#create'

  get '/tuition' => 'schools#tuition_index'
  post '/tuition' => 'schools#create'

  get '/schools/:id' => 'schools#show', as: :facts
  post '/schools/:id' => 'facts#create'
  get '/facts/:id' => 'facts#destroy'
  get '/edit/:id' => 'schools#edit', as: :school 
  patch '/edit/:id' => 'schools#update'
  get '/delete/:id' => 'schools#destroy'
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
