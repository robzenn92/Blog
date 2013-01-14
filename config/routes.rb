Blogger::Application.routes.draw do
  
  get "like/add_like_to_article"
  get "like/remote_like_from_article"


  resources :users do
    resources :articles do
      resources :comments
    end
  end


=begin
  match 'articles/:article_id/comments' => "comments#index", :via => :get#, :as => "show_all_article_comments"
  match 'articles/:article_id/comments/:comment_id' => "comments#show", :via => :get, :as => "show_article_comment"
  match 'articles/:article_id/comments/new' => "comments#new", :as => "add_article_comment"
  match 'articles/:article_id/comments/:comment_id/edit' => "comments#edit", :via => :get, :as => "edit_article_comment"
  match 'articles/:article_id/comments/' => "comments#destroy", :via => :delete, :as => "remove_article_comment"
  match 'like/:article_id' => "like#add_like_to_article", :via => :post, :as => "like_article"

=end

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
  root :to => 'users#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
