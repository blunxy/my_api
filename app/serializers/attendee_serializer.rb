class AttendeeSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email, :now_playing
end
