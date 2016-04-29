Rails.application.routes.draw do
  resources :concerts do
    resources :comments, except: [:show, :edit, :update, :index]
  end

  get '/by_price' => 'concerts#by_price', as: :by_price
  post '/by_price' => 'concerts#results'

end
