Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'twillio#index'
  put '/send_text', to: 'twillio#test'
  get '/mockup', to: 'mockup#index'
end
