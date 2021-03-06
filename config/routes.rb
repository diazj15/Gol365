Rails.application.routes.draw do

  resources :playerpositions

  resources :gameactions

  resources :gameplayers

  resources :players

  resources :actionlists

  resources :actions

  resources :championshiptables
  
  resources :games do
    collection do
      put :lineup
    end
  end

  resources :teams

  resources :fields

  resources :teamfields

  resources :stadia

  resources :tournaments

  resources :news

  get 'gamedetail' => 'games#gamedetail'
  get 'CreateGameaction' => 'games#CreateGameaction'
  

  #resources :games, :collection => { :lineupplayers => :put }

  #put 'lineupplayers_games' => 'games#lineupplayers'
  
  #resources :gameplayers, :collection => { :lineup => :put }

  #resources :gameplayers do 
  #  collection do
  #    put 'lineup'
  #  end
  #end
  #resources :gameplayers, :collection => { :lineup => :put }

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  get 'nextgames' => 'news#nextgames'
  get 'teampositions' => 'news#teampositions'
  get 'topscorers' => 'news#topscorers'

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
