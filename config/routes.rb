Rails.application.routes.draw do
  resources :castles, only: [:show] do
    resources :wizzards, only: [:index, :new, :create]
  end
  resources :wizzards, only: [:show, :edit, :update, :destroy]

end
