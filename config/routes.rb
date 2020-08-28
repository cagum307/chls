Rails.application.routes.draw do

  get 'toppages/index'
  root to: 'toppages#index'
  
  get 'lesson01s', to: 'lesson01s#index'
  
end
