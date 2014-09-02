Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
end
