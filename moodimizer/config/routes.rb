Rails.application.routes.draw do

#user routes
  get '/users' => 'users#index', as: :users
  get '/users/new' => 'users#new', as: :users_new
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :users_edit
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy', as: :users_destroy

#event routes
  get '/events' => 'events#index', as: :events
  get '/events/new' => 'events#new', as: :events_new
  post '/events' => 'events#create'
  get '/events/:id' => 'events#show', as: :event
  get 'events/:id/edit' => 'events#edit', as: :events_edit
  patch 'events/:id' => 'events#update'
  delete 'events/:id' => 'events#destroy', as: :events_destroy

#mood routes
  root 'moods#index'
  get '/moods' => 'moods#index', as: :moods
  get '/moods/:id' => 'moods#show', as: :mood

  # match '/moods/:id/events/new' => 'mood#show', as: :mood


#session routes
  get '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

end
