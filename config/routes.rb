Rails.application.routes.draw do

 resources :users, only: [:show, :edit]
 devise_for :users
 resources :post_images, only: [:new, :create, :index, :show, :destroy]
 root to: "homes#top"

 get "/homes/about" => "homes#about", as: "about"

end