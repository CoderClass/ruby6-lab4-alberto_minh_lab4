Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  root 'rooms#index'
  get 'logout' =>'home#logout'
  get 'login' => 'home#login'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
