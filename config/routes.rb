HRM::Application.routes.draw do
  root :to => 'people#welcome'

  get '/people' => 'people#index'
  get '/people/new' => 'people#new'
  get '/people/:id' => 'people#show', as: :show_person
  get '/people/:id/edit' => 'people#edit', as: :edit_person
  patch '/people/:id' => 'people#update'
  post '/people' => 'people#create'

  get '/schools' => 'schools#index'
  get '/schools/new' => 'schools#new'
  get '/schools/:id' => 'schools#show', as: :show_school
  get '/schools/:id/edit' => 'schools#edit', as: :edit_school
  patch '/schools/:id' => 'schools#update'
  post '/schools' => 'schools#create'
#  get '/schools' => 'schools#index'
#  get '/schools/:id' => 'schools#show' as: :school
  resources :people, :schools
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
