Rails.application.routes.draw do
  get 'random/index'

  get 'sitemap/index' => 'sitemap#index'
  get 'sitemap' => 'sitemap#index'
  get 'welcome' => 'welcome#index'
  get 'welcome/index' => 'welcome#index'
  get 'about' => 'about#index'
  get 'about/pics' => 'about#pics'
  get 'pics' => 'about#pics'
  get 'random' => 'random#index'
  get 'matchgamehome' => 'random#matchgamehome'
  get 'matchgame' => 'random#matchgame'
  get 'background' => 'random#background'
  get 'portfolio' => 'about#portfolio'
  post 'set_name' => 'welcome#set_name'
  post 'matchgame' => 'random#matchgame'
  post 'set_background' => 'random_#background'
  post 'portfolio' => 'about#portfolio'
  post 'pics' => 'about#pics'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
