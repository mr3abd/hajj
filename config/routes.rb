Rails.application.routes.draw do



  resources :pinpin_pin_worshops
  resources :pinpin_pin_worshopsses
  resources :notes
resources :user
  resources :handbooks
  resources :worships do
    resources :pin_worships
  end
root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
