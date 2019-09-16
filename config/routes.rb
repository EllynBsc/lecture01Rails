Rails.application.routes.draw do
  # get 'pages/about'

  get '/about', to: 'pages#about'
  # verb '/path', to: 'controller_name#action_name'

  # get 'pages/contact'

  get '/contact', to: 'pages#contact'
  # get '/home', to: 'pages#home'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
