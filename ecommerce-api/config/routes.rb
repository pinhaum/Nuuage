Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #domain.com/admin
  namespace :admin do 
    namespace :v1 do
      get "home" => "home#index"
      resources :categories
    end
  end

  #domain.com/storefront
  namespace :storefront do
    namespace :v1 do
      
    end
  end
end
