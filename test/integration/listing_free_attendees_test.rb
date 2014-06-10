require 'test_helper'

class ListingFreeAttendeesTest < ActionDispatch::IntegrationTest

  setup do
    Attendee.create!(fullname: 'Jordan Pratt', 
                     email: 'blunxy@gmail.com', 
                     now_playing: 1)
    Attendee.create!(fullname: 'Mark Stadel', 
                     email: 'mstadel@example.com', 
                     now_playing: nil)
  end


  test 'list free attendees' do
    get '/free_attendees'

    assert_response 200
    assert is_json?(response)
    assert_equal 2, num_records_in(response)
  end

end
