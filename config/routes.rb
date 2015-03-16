Rails.application.routes.draw do

  resources :todolists do
    resources :todos, except: :show, shallow: true
  end

  root 'todolists#index'
end
