class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :attended, :meeting, :in_session_format, :attended_format
  belongs_to :meeting
end
