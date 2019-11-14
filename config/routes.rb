Rails.application.routes.draw do
	post 'api/v1/login' => 'api/v1/sessions#create'
	delete 'api/v1/logout' => 'api/v1/sessions#destroy'
	get 'api/v1/get_current_user' => 'api/v1/sessions#get_current_user'
	post 'api/v1/signup' => 'api/v1/users#create'
	
	namespace :api do
		namespace :v1 do
			resources :donations
			resources :pets
			resources :users
		end
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
