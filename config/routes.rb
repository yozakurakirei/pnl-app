Rails.application.routes.draw do
  root to: 'pnl#index'
  get 'pnl/show'
  get 'pnl/new'
  get 'pnl/about'
  get 'pnl/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
