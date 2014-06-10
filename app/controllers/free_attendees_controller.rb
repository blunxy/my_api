class FreeAttendeesController < NoRootController

  def index
    free_attendees = Attendee.all
    render json: free_attendees, status: 200
  end

end
