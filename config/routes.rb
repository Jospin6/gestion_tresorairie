Rails.application.routes.draw do
  resources :autres_depenses
  resources :salaires
  resources :historique_apports
  resources :apport_locals
  resources :membre_conseils
  resources :employe_activites
  resources :activites
  resources :financements
  resources :projets
  resources :partenaires
  resources :employes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
