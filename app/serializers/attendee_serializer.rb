class AttendeeSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email
end
