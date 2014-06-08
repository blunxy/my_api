Rails.application.routes.draw do

  resources :attendees, :only => :index

end
