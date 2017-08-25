Rails.application.routes.draw do
  resources :images, only: :index do
    post :update_all, on: :collection
  end
end

