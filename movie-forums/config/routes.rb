Rails.application.routes.draw do

  get '/' => 'movies#search', as: :movies
  post '/' => 'movies#results'
  post '/:user' => 'movies#search', as: :users
  get '/:id' => 'movies#show', as: :movie
  post '/:id' => 'movies#post', as: :comments

end
