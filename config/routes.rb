Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  
  get '/mypage', to: 'pnl#index'
  get 'pnl/show'
  get 'pnl/new'
  get '/about', to: 'pnl#about'
  get 'pnl/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
