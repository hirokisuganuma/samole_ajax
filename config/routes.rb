Rails.application.routes.draw do
  root :to => 'fruits#index'
  resources :vegetables
  resources :fruits do
    collection do
      get 'content'
    end
  end
  post  '/vegetables/ajax_communication' , to: 'vegetables#ajax_communication',as:'ajax_communication'
end
