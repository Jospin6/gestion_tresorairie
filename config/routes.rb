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
  resources :images
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :recus
  resources :apports

  root "home#index"
end
