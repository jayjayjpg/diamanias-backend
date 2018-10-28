Rails.application.routes.draw do
  resources :layers
  resources :panels  
  resources :chapters do
    resources :panels
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
