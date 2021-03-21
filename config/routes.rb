Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about'
  resources :posts do
    resources :comments
  end
  post 'find/find_post' => 'find#find_post'
  post 'find/all_posts' => 'find#all_posts'
  post 'notification/send_push' => 'notification#send_push'
end
