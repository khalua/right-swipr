R20130312RightSwipr::Application.routes.draw do
  root :to => 'welcome#index'
  resources :subscribers, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'

end
