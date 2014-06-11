class Game < ActiveRecord::Base

  has_many :players, class_name: "Attendee", foreign_key: "now_playing"

end
