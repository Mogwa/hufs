Rails.application.routes.draw do
  root 'profiles#index'
  
  devise_for :users
  resources :posts
  
  # 이중전공 게시판 라우팅
  get 'post_sub' => 'posts#indexs'
  get 'sub_index' => 'posts#sub_index'
  get 'sub_new' => 'posts#sub_new'
  post 'sub_create' => 'posts#sub_create'
  patch 'sub_update' => 'posts#sub_update'
  get 'sub_edit' => 'posts#sub_edit'
  
  post '/comments' => 'comments#create'
  delete '/comments/:id' => 'comments#destroy'
  # resources :gfraposts, :controller => "posts", :type => "Gfrapost"
  # resources :Imeposts, :controller => "posts", :type => "Imepost"
  
  get 'my_page' => 'profiles#index'
  get 'new_profile' => 'profiles#new'
  post 'new_profile' => 'profiles#create'
  patch 'graduation', as:'graduation', to: 'profiles#edit'

end
