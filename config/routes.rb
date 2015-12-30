Rails.application.routes.draw do
  get '/about' => 'pages#about', as: 'about'
  resources :contacts, only: [':new, :create']
  devise_for :users
  resources :posts do
    resources :comments
  end
  resources :projects
  root "home#index"
end
