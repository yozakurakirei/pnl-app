Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  
  get '/index', to: 'pnl#index'
  get 'pnl/show'
  get 'pnl/new'
  get '/about', to: 'pnl#about'
  get '/contact', to: 'pnl#contact'
 
  resources :posts
end
