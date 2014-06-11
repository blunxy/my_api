Rails.application.routes.draw do

  resources :attendees, :only => [:index, :create, :show]
  resources :free_attendees
  
end
