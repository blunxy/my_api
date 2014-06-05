class AttendeesController < ApplicationController

  def index
    render json: Attendee.all, status: 200
  end

  private
  def default_serializer_options
    { root: false }
  end

end
