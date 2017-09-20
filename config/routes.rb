Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/load_list", to: "pages#load_list"
  get "/retrieve_db", to: "pages#retrieve_db"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
