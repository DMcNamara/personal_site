PersonalSite::Application.routes.draw do
  resources :posts

  root 'pages#main'
end
