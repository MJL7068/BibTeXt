Rails.application.routes.draw do
  resources :pages
  resources :articles
  get '/:page_id', to: 'pages#show'
  get '/:page_id/new/article', to: 'articles#new'
  get '/', to: 'pages#new'
  post '/:page_id/articles', to: 'articles#create'
end
