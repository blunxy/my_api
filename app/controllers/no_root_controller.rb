class NoRootController < ApplicationController

  private
  def default_serializer_options
    { root: false }
  end

end
