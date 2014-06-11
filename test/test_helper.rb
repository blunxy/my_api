ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'

class ActiveSupport::TestCase

  def is_json?(response)
    response.content_type == Mime::JSON
  end

  def num_records_in(response)
    body_as_json(response).size
  end

  def body_as_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  
end
