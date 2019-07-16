Rails.application.routes.draw do
  get 'sessions/new'

  # get 'users/new' ← 「rails g controller Users new」実行時に挿入

  # get 'static_pages/top'
  root 'static_pages#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

end