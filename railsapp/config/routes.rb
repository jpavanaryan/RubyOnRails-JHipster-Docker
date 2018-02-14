Rails.application.routes.draw do
    #resources :projects

	# get '/projects', to: 'projects#index'

	# get '/projects/new', to: 'projects#new'

	# get '/projects/:id', to: 'projects#show'	

	# get '/projects/:id/edit', to: 'projects#edit'

	# post '/projects', to: 'projects#create' 

	# put '/projects/:id', to: 'projects#update' 

	# delete '/projects/:id', to: 'projects#destroy'

	resources :projects 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
