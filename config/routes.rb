Rails.application.routes.draw do
  resources :notebooks, except: [:show]
  get 'angular-items', to: 'notebooks#angular' 
  get 'notebook/:id', to: 'notebooks#show', as: 'notebook_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
end
