Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/contact', to: 'pages#contact', as: 'contact'
  resources :categories, only: [:show, :index]

  get '/psychanalyse', to: 'books#psychanalyse', as: 'psychanalyse'
  get '/psychanalyseRevuesPeriodiques', to: 'books#psychanalyseRevuesPeriodiques', as: 'psychanalyseRevuesPeriodiques'
  get '/psychiatrieEnfant', to: 'books#psychiatrieEnfant', as: 'psychiatrieEnfant'
  get '/psychologie', to: 'books#psychologie', as: 'psychologie'
  get '/philosophie', to: 'books#philosophie', as: 'philosophie'
  get '/sociologieEthnoAnthropologie', to: 'books#sociologieEthnoAnthropologie', as: 'sociologieEthnoAnthropologie'
  get '/litterature', to: 'books#litterature', as: 'litterature'
  get '/litteratureRevuesCollections', to: 'books#litteratureRevuesCollections', as: 'litteratureRevuesCollections'
  get '/poesie', to: 'books#poesie', as: 'poesie'
  get '/theatre', to: 'books#theatre', as: 'theatre'
  get '/cinema', to: 'books#cinema', as: 'cinema'
  get '/civilisationAraboMusulmane', to: 'books#civilisationAraboMusulmane', as: 'civilisationAraboMusulmane'
  get '/semantiqueSemiologie', to: 'books#semantiqueSemiologie', as: 'semantiqueSemiologie'
  get '/artsDesignPeinturePhoto', to: 'books#artsDesignPeinturePhoto', as: 'artsDesignPeinturePhoto'

end
