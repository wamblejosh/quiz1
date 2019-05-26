Rails.application.routes.draw do
	root 'static_pages#index'
	resources :movies, only: [:new, :create, :show]
end
