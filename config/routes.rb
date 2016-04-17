Rails.application.routes.draw do
  resources :rules
  resources :categories
  resources :transactions do
    collection { post :import }
  end

  root to: "transactions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
