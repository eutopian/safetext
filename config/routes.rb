Rails.application.routes.draw do

  resource :messages do
    collection do
      post 'reply'
      post 'send_sms'
    end
  end

  resources :civilians

end
