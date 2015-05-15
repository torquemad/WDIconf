Rails.application.routes.draw do

  mount SinatraApi.new => '/api'

  get 'pages/index'
  get 'pages/about'

  get   '/'                  => 'pages#index',      :as => 'root'

end


