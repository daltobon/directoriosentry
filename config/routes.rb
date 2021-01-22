Rails.application.routes.draw do
  get 'companies/index'

  get 'companies/show'

  get 'companies/new'

  get 'companies/edit'

  get 'companies/update'

  get 'companies/destroy'

root 'companies#index'

  resources :companies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
