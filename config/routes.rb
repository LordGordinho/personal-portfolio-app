Rails.application.routes.draw do
  root 'pages#about'

  resources :repositories, only: %i[index show]
  
  get 'contacts', to: 'pages#contacts'
end
