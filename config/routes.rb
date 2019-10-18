Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#show'
  get  '/users/new',         to: 'users#new'
  get  '/users/login',       to: 'users#login'
  get  '/posts/detail/:id',  to: 'posts#detail'
  post '/users/add',         to: 'users#add'
  get  '/posts/show',        to: 'posts#show'
  post  '/users/login2',     to: 'users#login2'
  get  '/posts/new',         to: 'posts#new'
  post '/posts/add',         to: 'posts#add'
end
