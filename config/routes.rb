Rails.application.routes.draw do

  resources :attendees, :only => :index
  resources :free_attendees, :only => :index

end
