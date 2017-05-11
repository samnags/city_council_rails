class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :meeting
  belongs_to :meeting
end
