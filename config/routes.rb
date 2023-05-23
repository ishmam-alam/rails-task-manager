Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list all tasks
  get 'tasks', to: 'tasks#index'

  get "tasks/:[id]", to: "tasks#show"

  # Create / add new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # Update / edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks#id', to: 'tasks#update'

  # view details of a task
  get 'tasks/:id/details', to: 'task#details'

  # Delete / remove task
  delete 'tasks/:id', to: 'tasks#destroy'
end
