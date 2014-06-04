class AttendeesController < ApplicationController

  def index
    render json: Attendee.all
  end

  private
  def default_serializer_options
    { root: false }
  end

end
