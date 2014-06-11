Rails.application.routes.draw do

  resources :attendees, :only => [:index, :create, :show, :destroy]
  resources :free_attendees
  resources :games
end
