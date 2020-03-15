Rails.application.routes.draw do
  get 'welcome/index'
  get 'recipes/index'

  get 'search', to: "recipes#search"
  resources :categories
  devise_for :users
  resources :recipes do
    resources :comments
  end
  root "welcome#index"
end
