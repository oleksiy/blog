# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do
    resources :comments
  end

  # prometheus
  get '/metrics', to: 'metrics#index'
end
