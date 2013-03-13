R20130312RightSwipr::Application.routes.draw do
  root :to => 'welcome#index'

  resources :subscribers, :only => [:new, :create]
end
