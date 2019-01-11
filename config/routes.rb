Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { confirmations: 'confirmations' }

  devise_scope :user do
    authenticated :user do
      root :to => 'profiles#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

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
  get 'edit_profile' => 'profiles#profile_edit'
  patch 'edit_profile' => 'profiles#update'
  get 'reset_graduation' => 'profiles#reset_graduation'

end
