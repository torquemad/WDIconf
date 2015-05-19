Rails.application.routes.draw do

  # ------ Users routes ------
    # resources :users
    get   '/users/'               => 'users#index',   :as=>'users_home'
    get   '/users/all'            => 'users#all',     :as=>'users_all'
    get   '/users/signup'         => 'users#new',     :as=>'user_signup'
    post  '/users/signup'         => 'users#create'
    get   '/users/:id/profile'    => 'users#profile', :as=> 'user_profile'
    get   '/users/:id/edit'       => 'users#edit',    :as=> 'user_edit'
    put   '/users/:id/edit'       => 'users#update',  :as=> 'user_update'
    #delete '/user/delete/:id'     => 'user#destroy',  :as=> 'user_delete'
  # --------------------------

  # ------ Speakers routes ------
    resources :speakers
  # -----------------------------

  # ------ Authentication routes ------
    get   '/login'                => 'session#new',       :as => 'login'
    post  '/login'                => 'session#create'
    delete   '/logout'            => 'session#destroy',   :as => 'logout'
  # --------------------------

  # ------ Talks routes ------
    resources :talks
  # --------------------------


  # ------ Talks routes ------
    # get 'talks/'                  => 'talks#index',     :as=>'talks'
    # get 'talks/add_talk'          => 'talks#add_talk',  :as=>'talk_add'
    # post 'talks/add_talk'         => 'talks#create'
    # get 'talks/:id/edit_talk'     => 'talks#edit_talk'
    # get 'talks/:id'               => 'talks#show'
    # patch 'talks/:id'             => 'talks#update'
    # put 'talks/:id'               => 'talks#update'
    # delete 'talks/:id'            => 'talks#delete_talk'
  # --------------------------

  get 'pages/index'
  get 'pages/about'

   get   '/'                  => 'pages#index',      :as => 'root'
end
