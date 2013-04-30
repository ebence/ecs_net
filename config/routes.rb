EcsNet::Application.routes.draw do

  scope "(:locale)", :locale => /en|hu/ do

    resources :logs do
      collection do
        get 'add_log_entry'
      end
    end

    resources :devices do
      resources :logs
      collection do
        get 'mac_address'
        get 'last_data'
      end
    end

    match 'private/*url' => 'private#serve'

    mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

    get "pages/home"
    
    devise_for :users

    # The priority is based upon order of creation:
    # first created -> highest priority.

    # Sample of regular route:
    #   match 'devices/:id' => 'catalog#view'
    # Keep in mind you can assign values other than :controller and :action

    # Sample of named route:
    #   match 'devices/:id/purchase' => 'catalog#purchase', :as => :purchase
    # This route can be invoked with purchase_url(:id => device.id)

    # Sample resource route (maps HTTP verbs to controller actions automatically):
    #   resources :devices

    # Sample resource route with options:
    #   resources :devices do
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
    #   resources :devices do
    #     resources :comments, :sales
    #     resource :seller
    #   end

    # Sample resource route with more complex sub-resources
    #   resources :devices do
    #     resources :comments
    #     resources :sales do
    #       get 'recent', :on => :collection
    #     end
    #   end

    # Sample resource route within a namespace:
    #   namespace :admin do
    #     # Directs /admin/devices/* to Admin::DevicesController
    #     # (app/controllers/admin/devices_controller.rb)
    #     resources :devices
    #   end

    # You can have the root of your site routed with "root"
    # just remember to delete public/index.html.
    root :to => "pages#home"

    get "/:page" => "pages#show"

  end

  match '/:locale' => "home#index"

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
# match ':controller(/:action(/:id))(.:format)'
end
