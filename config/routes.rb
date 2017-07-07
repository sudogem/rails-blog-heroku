Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'welcome#default'
  root 'welcome#index'
  get 'welcome/index'

  delete 'logout', to: 'auth#logout'
  get 'logout', to: 'auth#logout'
  get 'login', to: 'auth#login'
  post 'dologin', to: 'auth#dologin'

  get 'signup', to: 'signup#index'
  post 'signup', to: 'signup#index'
  post 'signup/save', to: 'signup#save'
  get 'signup/success', to: 'signup#success'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_failure'

  get 'article/add'
  post 'article/save'

  get 'article/edit'
  put 'article/update'

  get 'article/delete'
end
