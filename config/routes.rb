Rails.application.routes.draw do
  resources :notebooks, except: [:show]
  get 'notebook/:id', to: 'notebooks#show', as: 'notebook_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  root to: 'pages#home'
end
