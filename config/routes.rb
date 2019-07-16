Rails.application.routes.draw do
  # get 'users/new' ← 「rails g controller Users new」実行時に挿入

  # get 'static_pages/top'
  root 'static_pages#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  resources :users

end