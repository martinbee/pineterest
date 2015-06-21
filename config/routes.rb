Rails.application.routes.draw do
  root 'pins#index'
  # get 'sign-up' => 'users#new', as: :sign_up
  get 'sign-up' => 'users#new', as: :new_user_modal
  post 'sign-up' => 'users#create', as: :users
  get 'sign-in' => 'session#new', as: :new_session_modal
  post 'sign-in' => 'session#create', as: :auth
  delete 'sign-out' => 'session#destroy', as: :sign_out
  get 'pine/new/' => 'pins#open_form_modal', as: :open_new_pin_modal
  post 'pine/create' => 'pins#create', as: :pins
  get 'pine/:id' => 'pins#open_pin_modal', as: :open_pin_modal

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
