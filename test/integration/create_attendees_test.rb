require 'test_helper'

class CreateAttendeesTest < ActionDispatch::IntegrationTest

  test 'creates new attendee with valid data' do
    
    post '/attendees', 
    { attendee: {
        fullname: 'Mr. Jingles',
        email: 'mjingles@example.com'
      }
    }.to_json, 
    { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }

    assert_response 201
    assert is_json?(response)

    attendee = body_as_json(response)
    assert_equal attendee_url(attendee[:id]), response.location
    assert_equal 'Mr. Jingles', attendee[:fullname]
    assert_equal 'mjingles@example.com', attendee[:email]
  end

  test 'does not create attendee if fed invalid data' do

    post '/attendees', 
    { attendee: {
        fullname: nil,
        email: 'mjingles@example.com'
      }
    }.to_json, 
    { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }

    assert_response 422

  end

end
