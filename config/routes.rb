Rails.application.routes.draw do
  resources :lists, only: [:index, :create, :show]
  # do resources :bookmark, only: [:new, :create]
  # end
  # do resources :bookmark, only: [:delete]
end
