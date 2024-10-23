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
  
  get 'documents/rapport_mc', to: 'documents#rapport_mc', as: 'document_rapport_m'
  get 'documents/apport', to: 'documents#apport', as: 'document_apport'
  get 'documents/rapport_prtnr', to: 'documents#rapport_prtnr', as: 'document_rapport_p'
  get 'documents/recu_prtnr', to: 'documents#recu_prtnr', as: 'document_recu_p'
  get 'documents/projet', to: 'documents#projet', as: 'document_projet'

  resources :recus

  root "home#index"
end
