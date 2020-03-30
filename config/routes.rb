Rails.application.routes.draw do

resources :patients do
  resources :consultations do
    resources :ordonnances do
      resources :medicaments, only: [:index, :new, :create]
      patch 'add_prescription', to: 'medicaments#add_prescription' , as: 'add_prescription'
    end
    resources :prescriptions, only: [:new, :create]

  end
end

  devise_for :users
  root to: 'patients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
