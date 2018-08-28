Rails.application.routes.draw do
  
  root 'profiles#index'
  
  devise_for :users
  
  get 'my_page' => 'profiles#index'
  get 'new_profile' => 'profiles#new'
  post 'new_profile' => 'profiles#create'
  patch 'graduation', as:'graduation', to: 'profiles#edit'

end
