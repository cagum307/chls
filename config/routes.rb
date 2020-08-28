Rails.application.routes.draw do

  get 'toppages/index'
  root to: 'toppages#index'
  
  get 'lesson01s', to: 'lesson01s#index'
  get 'lesson02s', to: 'lesson02s#index'
  
end
