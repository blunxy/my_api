require 'test_helper'
require 'mocha/mini_test'


class ListingAttendeesTest < ActionDispatch::IntegrationTest

  setup do
    Attendee.destroy_all
    Attendee.create!(fullname: 'Jordan Pratt', email: 'blunxy@gmail.com')
    Attendee.create!(fullname: 'Mark Stadel', email: 'mstadel@example.com')
  end

  test 'listing attendees' do
    get '/attendees'

    assert_response 200
    assert_equal Mime::JSON, response.content_type
    assert_equal Attendee.count, JSON.parse(response.body).size
  end


  test 'listing attendees by full name fragment' do
    get '/attendees?name=Jo' 

    assert_response 200
    assert_equal Mime::JSON, response.content_type
    assert_equal 1, JSON.parse(response.body).size
  end
  
end
