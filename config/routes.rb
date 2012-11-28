Scholarify::Application.routes.draw do

  resources :users

  resources :courses

  resources :topics do
    resources :comments
  end

  root :to => 'store#index'

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

end
