Textapp::Application.routes.draw do
  devise_for :users

  resources :messages, :only => [:index, :new, :create, :show]
  root to: 'messages#home'

end
