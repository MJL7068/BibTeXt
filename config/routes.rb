Rails.application.routes.draw do
  resources :in_proceedings
  resources :books
  resources :pages
  resources :articles
  get '/', to: 'pages#new'
  get '/:page_id', to: 'pages#show'
  get '/:page_id/export', to: 'pages#export'
  get '/:page_id/new/article', to: 'articles#new'
  post '/:page_id/articles', to: 'articles#create'
  get '/:page_id/articles/:id', to: 'articles#edit'
  patch '/:page_id/articles/:id', to: 'articles#update'
  get '/:page_id/new/book', to: 'books#new'
  post '/:page_id/books', to: 'books#create'
  get '/:page_id/books/:id', to: 'books#edit'
  patch '/:page_id/books/:id', to: 'books#update'
  get '/:page_id/new/in_proceeding', to: 'in_proceedings#new'
  post '/:page_id/in_proceedings', to: 'in_proceedings#create'
  get '/:page_id/in_proceedings/:id', to: 'in_proceedings#edit'
  patch '/:page_id/in_proceedings/:id', to: 'in_proceedings#update'
end
