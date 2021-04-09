Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :products, only: [:show] do
        get :product_detail, on: :collection
        get :auto_complete, on: :collection
      end

      resources :brands, only: [:show] do
      end

      resources :storefronts, only: [:show] do
      end
    end
  end
end
