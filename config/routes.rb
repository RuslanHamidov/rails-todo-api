Rails.application.routes.draw do
  resources :tasks do
    member do
      patch :update_status
    end
  end
end
