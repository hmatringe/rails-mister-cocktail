Rails.application.routes.draw do
  get 'doses/index'

  get 'doses/new'

  get 'doses/create'

  get 'doses/show'

  get 'ingredients/index'

  get 'ingredients/new'

  get 'ingredients/create'

  get 'ingredients/show'

  get 'cocktails/index'

  get 'cocktails/new'

  get 'cocktails/create'

  get 'cocktails/show'
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
