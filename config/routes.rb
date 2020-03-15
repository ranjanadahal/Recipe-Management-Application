Rails.application.routes.draw do
  get 'welcome/index'
  get 'recipes/index'

  get 'popular', to: "welcome#popular"
  resources :categories
  devise_for :users
  resources :recipes do
    resources :comments
  end
  root "welcome#index"
end
