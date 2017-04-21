Rails.application.routes.draw do
  resources :books
  resources :pages
  resources :articles
  get '/:page_id', to: 'pages#show'
  get '/:page_id/export', to: 'pages#export'
  get '/:page_id/new/article', to: 'articles#new'
  get '/', to: 'pages#new'
  post '/:page_id/articles', to: 'articles#create'
  get '/:page_id/articles/:id', to: 'articles#edit'
  patch '/:page_id/articles/:id', to: 'articles#update'
end
