Rails.application.routes.draw do
root 'company#index'
  get 'company/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
