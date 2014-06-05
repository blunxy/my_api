require 'test_helper'
require 'mocha/mini_test'


class ListingAttendeesTest < ActionDispatch::IntegrationTest

  setup do
    Attendee.create!(fullname: 'Jordan Pratt', email: 'blunxy@gmail.com')
  end

  test 'listing attendees' do
    get '/attendees'

    assert_response 200
    assert_equal Mime::JSON, response.content_type
    assert_equal Attendee.count, JSON.parse(response.body).size
  end

end
