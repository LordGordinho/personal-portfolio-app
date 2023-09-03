Rails.application.routes.draw do
  root 'pages#about'

  resources :repositories, only: %i[index show]
end
