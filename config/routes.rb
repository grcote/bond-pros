BondPros::Application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root :to => "bondpros#index"

  get "/bondpros"                     => "bondpros#index",      :as => "bondpros_index"
  post "/bondpros"                     => "bondpros#create",      :as => "bondpros_create"

  get  "/admin/bond"              => "bond#index",       :as => "bond_index"
  get  "/admin/bond/new"          => "bond#new",         :as => "bond_new"
  post "/admin/bond"              => "bond#create",      :as => "bond_create"
  get  "/admin/bond/:id"          => "bond#edit",        :as => "bond_edit"
  post "/admin/bond/:id"          => "bond#update",      :as => "bond_update"
  get  "/admin/bond/delete/:id"   => "bond#destroy",     :as => "bond_destroy"

  get  "/admin/company"              => "company#index",       :as => "company_index"
  get  "/admin/company/new"          => "company#new",         :as => "company_new"
  post "/admin/company"              => "company#create",      :as => "company_create"
  get  "/admin/company/:id"          => "company#edit",        :as => "company_edit"
  post "/admin/company/:id"          => "company#update",      :as => "company_update"
  get  "/admin/company/delete/:id"   => "company#destroy",     :as => "company_destroy"
  
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
