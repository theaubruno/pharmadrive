Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :doctor do
    resources :lists, only: [] do
      get 'listpdf', to: 'lists#listpdf', as: :listpdf
    end

    resources :patients, only: [ :index, :show, :edit, :create, :new ] do
      resources :lists, only: [:create, :update, :destroy]
    end

  end

  namespace :pharmacy do
    resources :lists, only: [:index, :update ]
    get 'archives', to: 'lists#archives', as: :archives
    get 'archives_show', to: 'lists#archives_show', as: :archives_show
  end

  resources :users, only: [:index, :show]

  resources :lists, only: [] do
    get 'listpdf', to: 'list#listpdf', as: :listpdf
  end

end


