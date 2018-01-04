Rails.application.routes.draw do
  get 'projects/new', to:  'projects#new', as: :projects_index_path
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
