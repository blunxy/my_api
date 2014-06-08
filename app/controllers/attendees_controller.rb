class AttendeesController < ApplicationController

  def index
    attendees = Attendee.all

    if name_to_match = params[:name]
      attendees = attendees.find_all { |att| att.fullname =~ /#{name_to_match}/i }
    end
    render json: attendees, status: 200
  end

  private
  def default_serializer_options
    { root: false }
  end

end
