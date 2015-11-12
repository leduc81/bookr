Rails.application.routes.draw do

  get 'steps/init'
  # get 'steps/:id' => 'steps#show', as: "step"
  resources :steps, only: :show
  post 'steps/next'

  get 'dashboard/index'

  # devise_for :users
  # root to: 'pages#home'

  devise_for :users
  root to: 'pages#home'

  get "pages/step2" => "pages#step_two"
  get "pages/step3" => "pages#step_three"


   resources :candidates #do
  #   resources :proofs
  # end

  # resources :user_profiles, only: [:new, :show, :edit, :create, :update] do
  #   resources :dossiers do
  #     resources :candidates do
  #       resources :proofs
  #     end
  #   end
  # end




  # namespace :admin do
  #   resources :user_profiles
  #   resources :dossiers
  #   resources :candidates
  #   resources :proofs
  # end

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
