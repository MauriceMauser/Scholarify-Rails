Scholarify::Application.routes.draw do

  root :to => 'store#index'

  resources :users

  resources :courses

  resources :topics do
    resources :comments
  end

  get "pages/home"

  get "pages/about"

  get "pages/help"

  get "pages/contact"

  get "pages/features"

  get "pages/privacy"

  get "pages/tos"

  get "pages/jobs"

  get "pages/blog"

  get "pages/support"

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

end
