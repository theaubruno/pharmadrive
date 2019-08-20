Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :doctor do

    resources :patients do
      resources :drugs, only: [:create, :new, :update, :edit, :show, :destroy ]
      resources :lists, only: [:create, :new, :show]
    end
  end

  namespace :pharmacy do
    resources :lists, only: [:index, :show, :update, :edit ]
  end

end
