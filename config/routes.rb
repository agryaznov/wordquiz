Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'word#quiz'

  post '/', :to => 'word#quiz'

  get '/stat', :to => 'stat#graph'
end
