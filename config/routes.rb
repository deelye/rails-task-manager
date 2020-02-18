Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Show all
  get 'tasks', to: 'tasks#index'
  # Create new
  get 'tasks/new', to: 'tasks#new'
  # Show task
  get 'tasks/show/:id', to: 'tasks#show', as: 'task'
  # Update db
  post 'tasks', to: 'tasks#create'
  # Edit task
  get 'tasks/:id/edit', to: 'tasks#edit'
  # Update db
  patch 'tasks/show/:id', to: 'tasks#update'
  # Delete task
  delete 'tasks/show/:id', to: 'tasks#destroy'
end
