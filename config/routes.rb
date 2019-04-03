Rails.application.routes.draw do



  resources :products
  root 'welcome#index'

  get 'welcome', to: 'welcome#index', as: 'welcome'
  get 'about', to: 'welcome#about', as: 'about'
  get 'contact', to: 'welcome#contact_us', as: 'contact'
  get 'prices', to: 'welcome#prices', as: 'prices'

  # get 'inicio', to: 'blog#index', as: 'inicio'
  # get 'new', to: 'blog#new', as: 'new'
  # get 'show', to: 'blog#show', as: 'show'
  # get 'edit', to: 'blog#edit', as: 'edit'

  # get 'blog/index', as: 'inicio'
  # get 'blog/new', as: 'new'
  # get 'blog/show', as: 'show'
  # get 'blog/edit', as: 'edit'

  resources :blog  #para crear el CRUD crea todas las url
  #resources :blog, only: [:index, :show, :edit] se limita para que solo muestre las rutas que le especifico
  #resources :blog, except: [:new] mostrar todas menos las listadas


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
