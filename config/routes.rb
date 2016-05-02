Rails.application.routes.draw do
 
  resources :coupons, only: [:show, :create, :new, :index]

end
