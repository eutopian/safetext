Rails.application.routes.draw do

  resource :messages do
    collection do
      post 'reply'
      post 'send_sms'
      get 'send_sms', to: "civilians#index"
    end
  end

  get '/survey', to: 'civilians#survey'
  post '/posting', to: 'civilians#posting'

  resources :civilians
  get '/dashboard', to: 'dashboard#index'
end
