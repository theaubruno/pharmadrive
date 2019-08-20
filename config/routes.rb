Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :doctor do

    resources :patients, only: [ :index, :show ] do
      resources :lists, only: [:create, :update, :destroy]
    end
  end

  namespace :pharmacy do
    resources :lists, only: [:index, :update ]
  end

end
