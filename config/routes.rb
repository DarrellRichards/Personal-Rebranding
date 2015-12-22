Rails.application.routes.draw do
  get '/about' => 'pages#about', as: 'about'
  get '/contact' => 'pages#contact', as: 'contact'
  get '/work' => 'pages#work', as: 'work'

  devise_for :users
  resources :posts
  root "home#index"
end
