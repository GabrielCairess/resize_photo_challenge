Rails.application.routes.draw do
  resources :images, only: :index do
    post :resize_images, on: :collection
  end
end

