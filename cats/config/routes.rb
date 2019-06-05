Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/cats', to: 'cats#index', as: 'cats'
  # post '/cats', to: 'cats#create'
  # # post '/cats', to: 'cats#new'
  # get '/cats/new', to: 'cats#new'
  # get '/cats/:id', to: 'cats#show', as: 'cat'
  # patch '/cats', to: 'cats#edit'

  resources :cats
end
