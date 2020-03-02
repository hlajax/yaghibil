Rails.application.routes.draw do
  resources :autoincomes
  resources :dashauto
  resources :autoexpenses
  resources :fonds
  resources :depenses
  resources :automobiles
  devise_for :administrateurs
  resources :accueil
  resources :incategories
  resources :incomes
  resources :sources
  resources :categories
  root to: 'accueil#index'
  resources :expenses
  resources :statistics, only: :index
   devise_scope :administrateur do
    get '/administrateurs/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
