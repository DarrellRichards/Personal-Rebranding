Rails.application.routes.draw do
  get '/about' => 'pages#about', as: 'about'
  
  get '/work' => 'pages#work', as: 'work'
  resources :contacts, only: [':new, :create']
  devise_for :users
  resources :posts do
    resources :comments
  end
  root "home#index"
end
