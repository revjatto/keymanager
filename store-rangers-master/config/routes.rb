Rails.application.routes.draw do
    
  
  devise_for :users
    
    
     resources :listings do
         
     resources :orders, only: [:new, :create] 
    end
    
    root 'listings#index'
    
    get 'seller' => "listings#seller"
    
    get 'seller' => "listings#seller"
    get 'sales' => "orders#sales"
    get 'purchases' => "orders#purchases"
    
  get 'pages/about'

  get 'pages/contact'

  get 'pages/privacy'

  get 'pages/gaqs'

 
  
    
end
