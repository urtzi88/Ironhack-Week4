Rails.application.routes.draw do

  get '/' => 'site#home'
  get '/text_inspections/new' => 'inspections#new'
  post '/text_inspections' => 'inspections#create'
  get '/asciis/new' => 'asciis#new'
  post '/asciis' => 'asciis#create'
  get '/dummytext/new' => 'dummytext#new'
  post '/dummytext' => 'dummytext#create'

end
