class FreeAttendeesController < NoRootController

  def index
    render json: Attendee.free, status: 200
  end

end
