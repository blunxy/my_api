class AttendeesController < NoRootController

  def index
    attendees = Attendee.all

    if name_to_match = params[:name]
      attendees = attendees.find_all { |att| att.fullname =~ /#{name_to_match}/i }
    end
    render json: attendees, status: 200
  end

  def create
    attendee = Attendee.new(attendee_params)
    if attendee.save
      render json: attendee, status: 201, location: attendee
    else
      render json: attendee.errors, status: 422
    end
  end


  private

  def attendee_params
    params.require(:attendee).permit(:fullname, :email)
  end

end
