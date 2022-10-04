Rails.application.routes.draw do
  root "exercises#index"
  get "create-training", action: :create_training, controller: 'exercises'
  resources :exercises
end
