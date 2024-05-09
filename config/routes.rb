Blogger::Application.routes.draw do
  resources :author_sessions, only: [ :new, :create, :destroy ]
  resources :authors
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors
  
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end

